using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HePa.Core.Entities;
namespace HePa.Service.Services
{
    public interface IOrderAdminManager
    {
        /// <summary>
        /// Get all detail of orders 
        /// </summary>
        /// <returns>List all order items</returns>
        IList<OrderDetail> GetOrderDetails();

        /// <summary>
        /// Get all detail of orders 
        /// </summary>
        /// <param name="createDate">customer create date</param>
        /// <returns>List all order items in that day</returns>
        IList<OrderDetail> GetOrderDetailsByDate(DateTime createDate);

        //Async method
        Task<IList<OrderDetail>> GetOrderDetailsAsync();

        Task<IList<OrderDetail>> GetOrderDetailsByDateAsync(DateTime createDate);

    }
}
