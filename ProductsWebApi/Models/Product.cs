using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ProductsWebApi.Models
{
    public class Product
    {
        [Key]
        public int id { get; set; }
        [Required]
        [StringLength(50)]
        public string referaece { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public float price { get; set; }
        public int qte_inStock { get; set; }
    }
}