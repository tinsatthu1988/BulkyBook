using System.Security.Claims;
using BulkyBook.DataAccess.Repository.IRepository;
using BulkyBook.Models;
using BulkyBook.Models.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using BulkyBook.Utility;
using Microsoft.AspNetCore.Http;
using ReflectionIT.Mvc.Paging;
using cloudscribe.Pagination.Models;

namespace BulkyBook.Areas.Customer.Controllers
{
    [Area("Customer")]
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IUnitOfWork _unitOfwork;

        public HomeController(ILogger<HomeController> logger, IUnitOfWork unitOfWork)
        {
            _logger = logger;
            _unitOfwork = unitOfWork;
        }

        public IActionResult Index(string postTitle, int pageNumber = 1, int pageSize = 4)
        {
            int ExcludeRecords = (pageSize * pageNumber) - pageSize;

            IEnumerable<Product>  productList = _unitOfwork.Product.GetAll(includeProperties: "Category,CoverType");
            var bookCount = productList.Count();

            if (!string.IsNullOrEmpty(postTitle))
            {
                productList = productList.Where(b => b.Title.Contains(postTitle));
                bookCount = productList.Count();
            }

            productList = productList.Skip(ExcludeRecords).Take(pageSize);

            var result = new PagedResult<Product>
            {
                Data = productList.ToList(),
                TotalItems = bookCount,
                PageNumber = pageNumber,
                PageSize = pageSize
            };

            var claimsIdentity = (ClaimsIdentity)User.Identity;
            var claim = claimsIdentity.FindFirst(ClaimTypes.NameIdentifier);
            if (claim != null)
            {
                var count = _unitOfwork.ShoppingCart.GetAll(c => c.ApplicationUserId == claim.Value).ToList().Count();

                HttpContext.Session.SetInt32(SD.ssShoppingCart, count);
            }
            return View(result);
        }
        public IActionResult Details(int id)
        {
            var productFromDb = _unitOfwork.Product.GetFirstOrDefault(u => u.Id == id, includeProperties: "Category,CoverType");
            ShoppingCart cartObj = new ShoppingCart()
            {
                Product = productFromDb,
                ProductId = productFromDb.Id
            };
            return View(cartObj);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize]
        public IActionResult Details(ShoppingCart CartObject)
        {
            CartObject.Id = 0;
            if (ModelState.IsValid)
            {
                //then we will add to cart
                var claimsIdentity = (ClaimsIdentity)User.Identity;
                var claim = claimsIdentity.FindFirst(ClaimTypes.NameIdentifier);
                CartObject.ApplicationUserId = claim.Value;
                ShoppingCart cartFromDb = _unitOfwork.ShoppingCart.GetFirstOrDefault
                    (
                    u => u.ApplicationUserId == CartObject.ApplicationUserId && u.ProductId == CartObject.ProductId, includeProperties: "Product"
                    );
                if(cartFromDb == null)
                {
                    //no records exists in database for that product for that user
                    _unitOfwork.ShoppingCart.Add(CartObject);
                }
                else
                {
                    cartFromDb.Count += CartObject.Count;
                    //_unitOfwork.ShoppingCart.Update(cartFromDb);
                }
                _unitOfwork.Save();

                var count = _unitOfwork.ShoppingCart.GetAll(c => c.ApplicationUserId == CartObject.ApplicationUserId).ToList().Count();

                //HttpContext.Session.SetObject(SD.ssShoppingCart, CartObject);
                HttpContext.Session.SetInt32(SD.ssShoppingCart, count);

                return RedirectToAction(nameof(Index));
            }
            else
            {
                var productFromDb = _unitOfwork.Product.GetFirstOrDefault(u => u.Id == CartObject.ProductId, includeProperties: "Category,CoverType");
                ShoppingCart cartObj = new ShoppingCart()
                {
                    Product = productFromDb,
                    ProductId = productFromDb.Id
                };
                return View(cartObj);
            }

            
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
