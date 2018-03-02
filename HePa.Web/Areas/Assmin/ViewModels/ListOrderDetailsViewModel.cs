using HePa.Core.Entities;
using HePa.Service.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HePa.Web.Areas.Admin.ViewModels
{
    public class ListOrderDetailsViewModel
    {
        IOrderAdminManager m_orderDetail;
        public ListOrderDetailsViewModel(IOrderAdminManager m_orderDetail)
        {
            this.m_orderDetail = m_orderDetail;
        }
        IList<OrderDetailViewModel> listOrderDetails { get; set; }

        public ListOrderDetailsViewModel MapOrderDetailToOrderDetailViewModel() {
            ListOrderDetailsViewModel list = new ListOrderDetailsViewModel(m_orderDetail);
            var orders = m_orderDetail.GetOrderDetailsAsync();
            //foreach (OrderDetail o in orders)
            //{

            //} 
            return list;
        }
    }
}