using HePa.Core.Entities;
using HePa.Data.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace HePa.Service.Services
{
    public class OrderAdminManager : IOrderAdminManager
    {
        private readonly IRepository<OrderDetail> m_orderRepository;
        private readonly IRepository<Customer> m_customerReponsity;
        private readonly IRepository<HepaProduct> m_productReponsity;
        private readonly IRepository<CouponCode> m_couponReponsity;
        public OrderAdminManager(IRepository<OrderDetail> m_orderRepository, IRepository<Customer> m_customerReponsity,
            IRepository<HepaProduct> m_productReponsity, IRepository<CouponCode> m_couponReponsity)
        {
            this.m_customerReponsity = m_customerReponsity;
            this.m_orderRepository = m_orderRepository;
            this.m_couponReponsity = m_couponReponsity;
            this.m_productReponsity = m_productReponsity;
        }

        public OrderAdminManager()
        {

        }
        public IList<Core.Entities.OrderDetail> GetOrderDetails()
        {
            var orders = m_orderRepository.Select(null, null, new List<string> { "Customer", "HepaProduct" }).ToList();
            return orders;
        }

        public IList<Core.Entities.OrderDetail> GetOrderDetailsByDate(DateTime createDate)
        {
            DateTime s = DateTime.Now;
            var customerIds = m_customerReponsity.Find().Where(x => x.CreatedDate == createDate).Select(t => t.Id).ToList();
            IList<OrderDetail> orders = new List<OrderDetail>();
            orders = m_orderRepository.Find().Where(x => customerIds.Contains(x.CustomerId)).ToList();
            DateTime e = DateTime.Now;
            System.Diagnostics.Debug.WriteLine("Time is: {0}",(e - s));
            return orders;
        }

        public async Task<IList<OrderDetail>> GetOrderDetailsAsync()
        {
            return await Task.Run(() => GetOrderDetails());
        }

        public async Task<IList<OrderDetail>> GetOrderDetailsByDateAsync(DateTime createDate)
        {
            return await Task.Run(() => GetOrderDetailsByDate(createDate));
        }
    }
}
