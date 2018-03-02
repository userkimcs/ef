using System.Security.Claims;
using System.Security.Principal;

namespace HePa.Core.Extensions
{
    public static class IdentityExtensions
    {
        /// <summary>
        /// Get display name
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public static string DisplayName(this IPrincipal user)
        {
            if (user.Identity.IsAuthenticated)
            {
                ClaimsIdentity claimsIdentity = user.Identity as ClaimsIdentity;
                foreach (var claim in claimsIdentity.Claims)
                {
                    if (claim.Type == "DisplayName")
                    {
                        return claim.Value;
                    }
                }
                return "";
            }
            else
                return "";
        }

        /// <summary>
        /// Get name of user
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public static string Name(this IPrincipal user)
        {
            if (user.Identity.IsAuthenticated)
            {
                ClaimsIdentity claimsIdentity = user.Identity as ClaimsIdentity;
                foreach (var claim in claimsIdentity.Claims)
                {
                    if (claim.Type == "Name")
                    {
                        return claim.Value;
                    }
                }
                return "";
            }
            else
                return "";
        }

        /// <summary>
        /// Get email address
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public static string Email(this IPrincipal user)
        {
            if (user.Identity.IsAuthenticated)
            {
                ClaimsIdentity claimsIdentity = user.Identity as ClaimsIdentity;
                foreach (var claim in claimsIdentity.Claims)
                {
                    if (claim.Type == "Email")
                    {
                        return claim.Value;
                    }
                }
                return "";
            }
            else
                return "";
        }

        /// <summary>
        /// Get phone number
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public static string PhoneNumber(this IPrincipal user)
        {
            if (user.Identity.IsAuthenticated)
            {
                ClaimsIdentity claimsIdentity = user.Identity as ClaimsIdentity;
                foreach (var claim in claimsIdentity.Claims)
                {
                    if (claim.Type == "PhoneNumber")
                    {
                        return claim.Value;
                    }
                }
                return "";
            }
            else
                return "";
        }


        public static bool IsPaid(this IPrincipal user)
        {
            if (user.Identity.IsAuthenticated)
            {
                ClaimsIdentity claimsIdentity = user.Identity as ClaimsIdentity;
                foreach (var claim in claimsIdentity.Claims)
                {
                    if (claim.Type == "IsPaid")
                    {
                        return System.Convert.ToBoolean(claim.Value);
                    }
                }
                return false;
            }
            else
                return false;
        }
    }
}
