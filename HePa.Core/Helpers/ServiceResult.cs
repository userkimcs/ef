using Microsoft.AspNet.Identity;
using System.Collections.Generic;

namespace HePa.Core.Helpers
{
    /// <summary>
    /// For all methods return it status and error 
    /// </summary>
    public class ServiceResult
    {
        public ServiceResult(bool result)
        {
            this.Succeeded = result;
        }
        /// <summary>
        /// Return successfull
        /// </summary>
        public bool Succeeded { get; set; }
        /// <summary>
        /// Error message if failure
        /// </summary>
        public string Error { get; set; }
        /// <summary>
        /// Add error for 
        /// </summary>
        /// <param name="error">Error message</param>
        /// <returns></returns>
        public static ServiceResult AddError(string error)
        {
            ServiceResult result = new ServiceResult(false);
            result.Error = error;
            return result;
        }
        /// <summary>
        /// Successfull
        /// </summary>
        public static ServiceResult Success
        {
            get
            {
                return new ServiceResult(true);
            }
        }

        public static bool operator==(ServiceResult r1, ServiceResult r2)
        {
            return r1.Succeeded == r2.Succeeded;
        }
        public static bool operator!=(ServiceResult r1, ServiceResult r2)
        {
            return r1.Succeeded != r2.Succeeded;
        }
        public override int GetHashCode()
        {
            return base.GetHashCode();
        }

        public override bool Equals(object obj)
        {
            return base.Equals(obj);
        }
    }
}
