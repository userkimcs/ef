using HePa.Core.Entities;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
namespace HePa.Web.ViewModels.Order
{
    public class OrderProduct
    {
        public string ProductId { get; set; }
        [Required(ErrorMessage = "Chưa chọn số lượng mua")]
        public string ProductName { get; set; }
        public double Price { get; set; }
        [Required(ErrorMessage="Chưa chọn số lượng mua")]
        public int NumberOfItems { get; set; }
    }

    public class ListOrderViewModel
    {
        public IList<OrderProduct> OrderProducts { get; set; }

        public string SelectedId { get; set; }
        public ListOrderViewModel()
        {
            OrderProducts = new List<OrderProduct>();
        }

        public ListOrderViewModel(IList<HepaProduct> products)
        {
            OrderProducts = new List<OrderProduct>();
            foreach (HepaProduct product in products)
            {
                OrderProduct order = new OrderProduct();
                order.ProductName = product.Name;
                order.Price = product.Price;
                order.ProductId = product.Id;
                OrderProducts.Add(order);
            }
        }
    }
}