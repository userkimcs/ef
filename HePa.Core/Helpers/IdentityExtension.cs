using System.Security.Principal;
using Microsoft.AspNet.Identity;
using System;
using System.Security.Claims;
using System.Collections.Generic;

namespace HePa.Core.Helpers
{
    public static class IdentityExtension
    {
        /*
        public static string GetDisplayName(this IPrincipal user)
        {
            if (user.Identity.IsAuthenticated)
            {
                ClaimsIdentity claimsIdentity = user.Identity as ClaimsIdentity;
                claimsIdentity.FindFirst(ClaimTypes.dCountry).Value;
                foreach (var claim in claims)
                {
                    if (claim.Type == "DisplayName")
                        return claim.Value;
                }
                return "";
            }
            else
                return "";
        }

        public static string GetFullName(this IPrincipal user)
        {
            var claim = ((ClaimsIdentity)user.Identity).FindFirst(ClaimTypes.Name);
            return claim == null ? null : claim.Value;
        }*/
    }
}
