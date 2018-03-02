using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using HePa.Core.Helpers;

namespace HePa.Service.Services
{
    public interface IOrderService
    {
        /// <summary>
        /// Add item to cart 
        /// </summary>
        /// <param name="customer">current customer</param>
        /// <param name="product">choosen product</param>
        /// <param name="numberOfItems">number of choosen product</param>
        /// <param name="couponCode">coupon code string</param>
        /// /// <param name="kindOfPurchase">delivery-product's style</param>
        /// <returns>true if success, false if not success or delete item</returns>
        ServiceResult AddToCart(string customerID, string productID, int numberOfItems, string couponCode, string kindOfPurchase);
        /// <summary>
        /// Get all products that customer ordering
        /// </summary>
        /// <param name="customerId">id of customer</param>
        /// <returns>List orders of customer</returns>
        IList<OrderDetail> GetCustomerCart(string customerId);
        /// <summary>
        /// get price of an order
        /// </summary>
        /// <param name="order">order in db</param>
        /// <returns>number of order items x price of item</returns>
        double GetPrice(OrderDetail order);
        /// <summary>
        /// 
        /// </summary>
        /// <param name="orders"></param>
        /// <returns></returns>
        double GetPrice(IList<OrderDetail> orders);
        /// <summary>
        /// Get all HePa's products
        /// </summary>
        /// <returns>List of products</returns>
        IList<HepaProduct> GetProducts();

        /// <summary>
        /// check coupond code
        /// </summary>
        /// <param name="counponCode">the customer's code</param>
        /// <returns>Sale OfF Amount or 0</returns>
        //CouponCode CheckCoupondCode(string couponCode);

        /// <summary>
        /// check coupond code
        /// </summary>
        /// <param name="newCustomer">new the customer</param>
        /// <returns>Service Result</returns>
        ServiceResult AddCustomer(Customer newCustomer);
        // Async methods
        Task<ServiceResult> AddToCartAsync(string customerID, string productID, int numberOfItems, string couponCode, string kindOfPurchase);
        Task<IList<OrderDetail>> GetCustomerCartAsync(string customerId);
        Task<double> GetPriceAsync(OrderDetail order);
        Task<double> GetPriceAsync(IList<OrderDetail> orders);
        Task<IList<HepaProduct>> GetProductsAsync();
        Task<ServiceResult> AddCustomerAsync(Customer customer);

        ///// <summary>
        ///// get all promotion events
        ///// </summary>
        ///// <returns>promotion-event list</returns>
        //IList<PromotionEvent> GetAllPromotion();
        //Task<IList<PromotionEvent>> GetAllPromotionAsync();
        
        ///// <summary>
        ///// get promotion events still active
        ///// </summary>
        ///// <returns>promotion-event list</returns>
        //IList<PromotionEvent> GetPromotion();
        //Task<IList<PromotionEvent>> GetPromotionAsync();

    }
}
