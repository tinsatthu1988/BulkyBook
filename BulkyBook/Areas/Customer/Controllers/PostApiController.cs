using BulkyBook.DataAccess.Repository.IRepository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BulkyBook.Areas.Customer.Controllers
{
    [Area("Customer")]
    [Route("api/[controller]")]
    [ApiController]
    public class PostApiController : ControllerBase
    {
        private readonly IUnitOfWork _unitOfwork;

        public PostApiController(IUnitOfWork unitOfWork)
        {
            _unitOfwork = unitOfWork;
        }

        [Produces("application/json")]
        [HttpGet("search")]
        public IActionResult Search()
        {
            try
            {
                string term = HttpContext.Request.Query["term"].ToString();
                var postTitle = _unitOfwork.Product.GetAll(p => p.Title.Contains(term)).Select(p => p.Title);
                return Ok(postTitle);
            }
            catch (Exception)
            {
                return BadRequest();
            }
        }
    }
}
