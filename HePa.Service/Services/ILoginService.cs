using Microsoft.AspNet.Identity;
using System.Threading.Tasks;

namespace HePa.Service.Services
{
    public interface ILoginService
    {
        Task<IdentityResult> LoginUserAsync(string email, string password, string remember);
    }
}
