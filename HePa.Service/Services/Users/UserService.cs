using HePa.Core.Entities;
using HePa.Core.Helpers;
using HePa.Data.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services.Users
{
    public class UserService : IUserService
    {
        private readonly IRepository<ApplicationUser> m_userRepository;
        private readonly IRepository<HepaPassport> m_passportRepository;
        private IClassService m_classService;
        // ctor
        public UserService(IRepository<ApplicationUser> m_userRepository,
            IRepository<HepaPassport> m_passportRepository)
        {
            this.m_userRepository = m_userRepository;
            this.m_passportRepository = m_passportRepository;
        }

        public IList<Core.Entities.ApplicationUser> GetAllUsers()
        {
            var users = m_userRepository.Find().ToList();
            return users;
        }

        public IList<Core.Entities.ApplicationUser> GetUsersByName(string name)
        {
            return m_userRepository.FindEntities(x => x.DisplayName == name).ToList();
        }

        public async Task<IList<Core.Entities.ApplicationUser>> GetAllUsersAsync()
        {
            return await Task.Run(() => GetAllUsers());
        }

        public async Task<IList<Core.Entities.ApplicationUser>> GetUsersByNameAsync(string name)
        {
            return await Task.Run(() => GetUsersByNameAsync(name));
        }


        public Core.Entities.ApplicationUser GetUsersById(string id)
        {
            return m_userRepository.FindEntity(x => x.Id == id);
        }

        public async Task<Core.Entities.ApplicationUser> GetUsersByIdAsync(string id)
        {
            return await Task.Run(() => GetUsersById(id));
        }



        public ServiceResult Update(Core.Entities.ApplicationUser user)
        {
            try
            {
                m_userRepository.Update(user);
                m_userRepository.SaveChanges();
                return ServiceResult.Success;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Thong bao loi: " + ex.Data);
                return ServiceResult.AddError("Lỗi");
            }
        }

        public async Task<ServiceResult> UpdateAsync(Core.Entities.ApplicationUser user)
        {
            return await Task.Run(() => Update(user));
        }

        public bool CheckUserPay(string userId)
        {
            var user = GetUsersById(userId);
            return user.IsPaid;
        }

        public async Task<bool> CheckUserPayAsync(string userId)
        {
            return await Task.Run(() => CheckUserPay(userId));
        }


        public async Task<ServiceResult> BlockAsync(string id)
        {
            try
            {
                var user = await m_userRepository.FindEntityAsync(x => x.Id == id);
                if (user != null)
                {
                    user.IsBlocked = true;
                    await m_userRepository.UpdateAsync(user);
                    await m_userRepository.SaveChangesAsync();
                    return ServiceResult.Success;
                }
                else
                {
                    return ServiceResult.AddError("User không tồn tại");
                }
            }
            catch (Exception e)
            {
                return ServiceResult.AddError(e.Data.ToString());
            }

        }

        public ServiceResult Block(string id)
        {
            try
            {
                var user = m_userRepository.FindEntity(x => x.Id == id);
                if (user != null)
                {
                    user.IsBlocked = true;
                    m_userRepository.Update(user);
                    m_userRepository.SaveChanges();
                    return ServiceResult.Success;
                }
                else
                {
                    return ServiceResult.AddError("User không tồn tại");
                }
            }
            catch (Exception e)
            {
                return ServiceResult.AddError(e.Data.ToString());
            }
        }

        public ServiceResult CountBlock(string id)
        {
            try
            {
                var user = m_userRepository.FindEntity(x => x.Id == id);
                if (user != null)
                {
                    int counter = user.BlockCounter;
                    if (counter >= 5)
                    {
                        var result = Block(id);
                        return result;
                    }
                    else
                    {
                        counter++;
                        user.BlockCounter = counter;
                        m_userRepository.Update(user);
                        m_userRepository.SaveChanges();
                        return ServiceResult.Success;
                    }
                }
                return ServiceResult.AddError("user không tồn tại");
            }
            catch (Exception e)
            {
                return ServiceResult.AddError(e.Data.ToString());
            }
        }

        public async Task<ServiceResult> CountBlockAsync(string id)
        {
            try
            {
                var user = await m_userRepository.FindEntityAsync(x => x.Id == id);
                if (user != null)
                {
                    int counter = user.BlockCounter;
                    if (counter >= 5)
                    {
                        var result = await BlockAsync(id);
                        return result;
                    }
                    else
                    {
                        counter++;
                        user.BlockCounter = counter;
                        await m_userRepository.UpdateAsync(user);
                        await m_userRepository.SaveChangesAsync();
                        return ServiceResult.Success;
                    }
                }
                return ServiceResult.AddError("user không tồn tại");
            }
            catch (Exception e)
            {
                return ServiceResult.AddError(e.Data.ToString());
            }
        }

        public async Task<bool> IsBlocked(string id)
        {
            try
            {
                var user = await m_userRepository.FindEntityAsync(x => x.Id == id);
                if (user != null)
                {
                    return user.IsBlocked;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception e)
            {
                return false;
            }
        }

        public int CalculateExpDays(string userId)
        {
            int expDays = 0;
            var user = m_userRepository.FindEntity(x => x.Id == userId);
            var passports = m_passportRepository.FindEntities(x => x.UserId == userId).OrderByDescending(x => x.ActiveDate).ToList();   //get all activated user passports
            if (passports.Count > 0)
            {
                var passport = passports.ElementAt(0);  //get last user's actived passport
                var lastActiveDate = passport.ActiveDate.Value;   //get last date
                var userExpDays = user.ExpDate;
                var endDate = lastActiveDate.AddDays(user.ExpDate); // calculate the exp date
                expDays = (endDate - DateTime.Now.Date).Days;

                //Update database
                user.ExpDate = expDays;
                m_userRepository.Update(user);
                m_userRepository.SaveChanges();
                return expDays;
            }
            return 0;
        }

        public async Task<int> CalculateExpDaysAsync(string userId)
        {
            return await Task.Run(() => CalculateExpDays(userId));
        }


        public DateTime ShowExpDate(string userId)
        {
            var user = m_userRepository.FindEntity(x => x.Id == userId);
            var passports = m_passportRepository.FindEntities(x => x.UserId == userId).OrderByDescending(x => x.ActiveDate).ToList();   //get all activated user passports
            if (passports.Count > 0)
            {
                var passport = passports.ElementAt(0);  //get last user's actived passport
                var lastActiveDate = passport.ActiveDate.Value;   //get last date
                DateTime endDate = lastActiveDate.AddDays(user.ExpDate); // calculate the exp date
                return endDate;
            }
            return DateTime.Now.Date;
        }

        public async Task<DateTime> ShowExpDateAsync(string userId)
        {
            return await Task.Run(() => ShowExpDate(userId));

        }

        public async Task<ServiceResult> DownGradeUserAsync(string userId)
        {
            try
            {
                ApplicationUser user = m_userRepository.FindEntity(x => x.Id == userId);
                if (user != null)
                {
                    //update user paid status
                    user.IsPaid = false;
                    await m_userRepository.UpdateAsync(user);
                    await m_userRepository.SaveChangesAsync();

                    var classes = await m_classService.GetRegisteredClassesAsync(userId);   //get user registed class
                    foreach (Class c in classes)    // change goal all class
                    {
                        await m_classService.ChangeGoalAsync(userId, c.Id, HePa.Core.Helpers.Constraint.FreeUserLearnwordAmount.FREE_USER_LEARNWORD_AMOUNT);
                    }
                    return ServiceResult.Success;
                }
                else
                {
                    return ServiceResult.AddError("User is not found");
                }

            }
            catch (Exception e)
            {
                return ServiceResult.AddError(e.Data.ToString());
            }
        }

        public async Task<ServiceResult> CheckUserReleaseAsync(string userId)
        {
            try
            {
                int expDays = await CalculateExpDaysAsync(userId);
                if (expDays <= 0)
                {
                    var result = await DownGradeUserAsync(userId);
                }
                else
                {
                    //DO NOTHING
                }
                return ServiceResult.Success;
            }
            catch (Exception e)
            {
                return ServiceResult.AddError(e.Data.ToString());
            }
        }


        public async Task<bool> IsPaid(string userId)
        {
            // return false if no user
            if (String.IsNullOrEmpty(userId) == true)
            {
                return false;
            }
            else
            {
                var user = await m_userRepository.FindEntityAsync(x => x.Id == userId);
                return user.IsPaid;
            }
        }
    }
}
