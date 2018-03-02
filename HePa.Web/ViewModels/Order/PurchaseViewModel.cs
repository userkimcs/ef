using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using HePa.Service.Services;
using HePa.Core.Helpers;
namespace HePa.Web.ViewModels.Order
{
    public class PurchaseViewModel
    {
        public ListOrderViewModel Orders { get; set; }
        public CustomerInfoViewModel Customer { get; set; }
        public string CoupondCode { get; set; }
        public string KindOfPurchase { get; set; }
        public PurchaseViewModel()
        {
            Customer = new CustomerInfoViewModel();
            Orders = new ListOrderViewModel();
        }
        public OrderDetail MapToOrderDetail()
        {
            var orderDetail = new OrderDetail();
            if (this.CoupondCode != null)
            {
                orderDetail.CouponCodeId = this.CoupondCode;
            }
            else
            {
                orderDetail.CouponCodeId = null;
            }
            /// Hepa product
            orderDetail.HepaProductId = Orders.OrderProducts[0].ProductId;
            //amount
            orderDetail.NumberOfItems = Orders.OrderProducts[0].NumberOfItems;
            /// kind of purchase
            orderDetail.KindOfPurchase = this.KindOfPurchase;
            return orderDetail;
        }
        public PurchaseViewModel(IList<HepaProduct> products)
        {
            this.Orders = new ListOrderViewModel();
            foreach (HepaProduct product in products)
            {
                OrderProduct order = new OrderProduct();
                order.ProductName = product.Name;
                order.Price = product.Price;
                order.ProductId = product.Id;
                Orders.OrderProducts.Add(order);
            }
            this.Customer = new CustomerInfoViewModel();
        }
    }
}