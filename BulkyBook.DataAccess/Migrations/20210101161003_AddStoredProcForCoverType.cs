using Microsoft.EntityFrameworkCore.Migrations;

namespace BulkyBook.DataAccess.Migrations
{
    public partial class AddStoredProcForCoverType : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"CREATE PROC ups_GetCoverTypes
                                    AS
                                    BEGIN
                                        SELECT * FROM dbo.CoverTypes
                                    END");
            migrationBuilder.Sql(@"CREATE PROC ups_GetCoverType
                                    @Id int
                                    AS
                                    BEGIN
                                        SELECT * FROM dbo.CoverTypes WHERE (Id = @Id)
                                    END");
            migrationBuilder.Sql(@"CREATE PROC ups_UpdateCoverTypes
                                    @Id int,
                                    @Name varchar(100)
                                    AS
                                    BEGIN
                                        UPDATE dbo.CoverTypes
                                        SET Name = @Name
                                        WHERE Id = @Id
                                    END");
            migrationBuilder.Sql(@"CREATE PROC ups_DeleteCoverTypes
                                    @Id int
                                    AS
                                    BEGIN
                                        DELETE FROM dbo.CoverTypes
                                        WHERE Id = @Id
                                    END");
            migrationBuilder.Sql(@"CREATE PROC ups_CreateCoverTypes
                                    @Name varchar(100)
                                    AS
                                    BEGIN
                                        INSERT INTO dbo.CoverTypes (Name)
                                        VALUES (@Name)
                                    END");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"DROP PROCEDURE ups_GetCoverTypes");
            migrationBuilder.Sql(@"DROP PROCEDURE ups_GetCoverType");
            migrationBuilder.Sql(@"DROP PROCEDURE ups_UpdateCoverTypes");
            migrationBuilder.Sql(@"DROP PROCEDURE ups_DeleteCoverTypes");
            migrationBuilder.Sql(@"DROP PROCEDURE ups_CreateCoverTypes");
        }
    }
}
