using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using MySql.Data.MySqlClient;
using ProductsWebApi.Models;

namespace ProductsWebApi.Controllers
{
    public class ValuesController : ApiController
    {
        private readonly PruductDbContext _context;
        public ValuesController()
        {
            _context = new PruductDbContext();
        }
        protected override void Dispose(bool disposing)
        {
            _context.Dispose();
        }

        // GET api/values
        public IEnumerable<Product> Get()
        {
            return _context.Products.ToList();
        }

        // GET api/values/5
        public Product Get(int id)
        {
            return _context.Products.SingleOrDefault(p => p.id == id);
        }

        // POST api/values
        [HttpPost]
        public async Task<IEnumerable<Product>> Post([FromBody]Product value)
        {
            //_context.Products.Add(value);
            //await _context.SaveChangesAsync();
            //return _context.Products.ToList();
            //return CreatedAtAction("GetProducts", new { id = value.id }, value);
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/values/5
        public void Delete(int id)
        {
        }
    }
}
