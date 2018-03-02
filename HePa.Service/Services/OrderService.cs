using HePa.Service.Services;
using System.Collections.Generic;
using System.Threading.Tasks;
using HePa.Data.Context;
using HePa.Core.Entities;
using System.Linq;
using System;
using HePa.Core.Helpers;
using System.Data.Entity.Validation;
namespace HePa.Service.Services
{
    public class OrderService : IOrderService
    {
        private readonly IRepository<Customer> m_customerRepository;
        private readonly IRepository<HepaProduct> m_productRepository;
        private readonly IRepository<OrderDetail> m_orderRepository;
        private readonly IRepository<CouponCode> m_couponRespository;
        private readonly IRepository<PromotionEvent> m_promotionRespository;
        public OrderService(IRepository<Customer> m_customerRepository, IRepository<HepaProduct> m_productRepository,
            IRepository<OrderDetail> m_orderRepository, IRepository<CouponCode> m_couponRespository, IRepository<PromotionEvent> m_promotionRespository)
        {
            this.m_customerRepository = m_customerRepository;
            this.m_orderRepository = m_orderRepository;
            this.m_productRepository = m_productRepository;
            this.m_couponRespository = m_couponRespository;
            this.m_promotionRespository = m_promotionRespository;
        }

        public OrderService()
        {

        }

        public ServiceResult AddToCart(string customerID, string productID, int numberOfItems, string couponCode, string kindOfPurchase)
        {
            //var orderDetail = m_orderRepository.FindEntity(t => t.CustomerId == customer.Id
            // && t.HepaProductId == product.Id);
            // Order not exist
            //if (orderDetail == null)
            //{
            // Customer not choose item
            try
            {
                if (numberOfItems <= 0)
                {
                    return ServiceResult.AddError("Số lượng không hợp lệ");
                }
                else // If choose item
                {
                    // Create new Order detail 
                    OrderDetail order = new OrderDetail();
                    // Update info
                    order.CustomerId = customerID;
                    order.HepaProductId = productID;
                    order.NumberOfItems = numberOfItems;
                    order.KindOfPurchase = kindOfPurchase;

                    //Nếu có coupond code thì add không thì dùng coupond 0
                    if (!String.IsNullOrEmpty(couponCode))
                    {
                        order.CouponCodeId = "0";
                    }
                    else
                    {
                        order.CouponCodeId = couponCode;
                    }

                    // Insert to data base 
                    this.m_orderRepository.Insert(order);
                    this.m_orderRepository.SaveChanges();
                    return ServiceResult.Success;
                }
            }
            catch (DbEntityValidationException ex)
            {
                return ServiceResult.AddError("Thông tin chưa được điền đầy đủ " + ex.Message);
            }
            // }
            //else // If customer update item exist in db
            //{
            //    // If customer reset the cart (order detailt)
            //    if (numberOfItems <= 0)
            //    {
            //        // Delete from db
            //        this.m_orderRepository.Delete(orderDetail);
            //        return ServiceResult.AddError("Số lượng không hợp lệ");
            //    }
            //    else 
            //    {
            //        // Update number of items
            //        orderDetail.NumberOfItems = numberOfItems;
            //        this.m_orderRepository.Update(orderDetail);
            //        return ServiceResult.Success;
            //    }
            //}
        }

        //public CouponCode CheckCoupondCode(string couponCode)
        //{
        //    if (!String.IsNullOrEmpty(couponCode))
        //    {
        //        couponCode = couponCode.Trim();
        //        var coupon = m_couponRespository.FindEntity(x => x.Id == couponCode);
        //        if (coupon != null)
        //        {
        //            return coupon;
        //        }
        //    }
        //    return null;
        //}

        public IList<OrderDetail> GetCustomerCart(string customerId)
        {
            return m_orderRepository.FindEntities(t => t.CustomerId == customerId).ToList();
        }

        public async Task<ServiceResult> AddToCartAsync(string customer, string product, int numberOfItems, string couponCode, string kindOfPurchase)
        {
            return await Task.Run(() => AddToCart(customer, product, numberOfItems, couponCode, kindOfPurchase));
        }
        public async Task<IList<OrderDetail>> GetCustomerCartAsync(string customerId)
        {
            return await Task.Run(() => GetCustomerCart(customerId));
        }

        public double GetPrice(OrderDetail order)
        {
            return order.HepaProduct.Price * order.NumberOfItems;
        }

        public double GetPrice(IList<OrderDetail> orders)
        {
            double prices = 0.0;
            foreach (OrderDetail order in orders)
            {
                prices = prices + order.HepaProduct.Price * order.NumberOfItems;
            }
            return prices;
        }

        public async Task<double> GetPriceAsync(OrderDetail order)
        {
            return await Task.Run(() => GetPrice(order));
        }

        public async Task<double> GetPriceAsync(IList<OrderDetail> orders)
        {
            return await Task.Run(() => GetPrice(orders));
        }


        public IList<HepaProduct> GetProducts()
        {
            return m_productRepository.Find().ToList();
            throw new System.NotImplementedException();
        }

        public async Task<IList<HepaProduct>> GetProductsAsync()
        {
            return await Task.Run(() => GetProducts());
        }

        //public async Task<CouponCode> CheckCouponCodeAsync(string couponCode)
        //{
        //    return await Task.Run(() => CheckCoupondCode(couponCode));
        //}

        public ServiceResult AddCustomer(Customer newCustomer)
        {
            try
            {
                m_customerRepository.Insert(newCustomer);
                this.m_customerRepository.SaveChanges();
                return ServiceResult.Success;
            }
            catch (Exception ex)
            {
                return ServiceResult.AddError(ex.Data.ToString());
            }
        }

        public async Task<ServiceResult> AddCustomerAsync(Customer customer)
        {
            return await Task.Run(() => AddCustomer(customer));
        }



        //public IList<PromotionEvent> GetAllPromotion()
        //{
        //    return m_promotionRespository.Find().ToList();
        //}

        //public async Task<IList<PromotionEvent>> GetAllPromotionAsync()
        //{
        //    return await Task.Run(() => GetAllPromotion());
        //}

        //public IList<PromotionEvent> GetPromotion()
        //{
        //    DateTime date = new DateTime();
        //    return m_promotionRespository.Find().Where(x => x.EndDate > date).ToList();
        //}

        //public async Task<IList<PromotionEvent>> GetPromotionAsync()
        //{
        //    return await Task.Run(() => GetPromotion());
        //}
    }
}

