namespace ProductsWebApi.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialModel : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Products",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        referaece = c.String(nullable: false, maxLength: 50, storeType: "nvarchar"),
                        name = c.String(unicode: false),
                        description = c.String(unicode: false),
                        price = c.Single(nullable: false),
                        qte_inStock = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Products");
        }
    }
}
