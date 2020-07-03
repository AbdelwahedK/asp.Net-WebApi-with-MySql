using MySql.Data.EntityFramework;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ProductsWebApi.Models
{
    [DbConfigurationType(typeof(MySqlEFConfiguration))]
    public class PruductDbContext : DbContext
    {
        public DbSet<Product> Products { get; set; }

        public PruductDbContext()
            : base("DefaultConnection")
        {

        }
    }
}