using HePa.Core.Entities;
using HePa.Core.Helpers;
using HePa.Data.Context;
using HePa.Service.Services.Users;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Service.Services.HepaPassportServices
{
    public class HepaPassportService : IHepaPassportService
    {
        private readonly IRepository<HepaPassport> m_hepapassportRepository;
        private readonly IRepository<ApplicationUser> m_userRepository;
        public HepaPassportService(IRepository<HepaPassport> m_hepapassportRepository, IRepository<ApplicationUser> m_userRepository)
        {
            this.m_hepapassportRepository = m_hepapassportRepository;
            this.m_userRepository = m_userRepository;
        }
        public Core.Helpers.ServiceResult Insert(Core.Entities.HepaPassport e)
        {
            try
            {
                m_hepapassportRepository.Insert(e);
                m_hepapassportRepository.SaveChanges();
            }
            catch (Exception ex)
            {
                return ServiceResult.AddError(ex.Message);
            }
            return ServiceResult.Success;
        }

        public async Task<ServiceResult> InsertAsync(Core.Entities.HepaPassport e)
        {
            return await Task.Run(() => Insert(e));
        }
        public ServiceResult Insert(string id, int expirytDate)
        {
            //Generate passport code
            try
            {
                bool isSame = true;
                IList<string> codes = m_hepapassportRepository.Find().Select(x => x.Code).ToList();
                string code = "";
                while (isSame != false) //Neu isSame = true thi sinh lai code
                {
                    code = RandomString(3);
                    isSame = checkSameCode(code);
                }

                //Create new object and insert to database
                HepaPassport hp = new HepaPassport();
                hp.Code = code;
                hp.Id = id;
                hp.ExpiryDate = expirytDate;
                hp.CreateDate = DateTime.Now.Date;
                m_hepapassportRepository.Insert(hp);
                m_hepapassportRepository.SaveChanges();
                return ServiceResult.Success;
            }
            catch (Exception e)
            {
                return ServiceResult.AddError(e.Data.ToString());
            }

        }

        public async Task<ServiceResult> InsertAsync(string id, int expirytDate)
        {
            return await Task.Run(() => Insert(id, expirytDate));
        }

        //public ServiceResult Insert(int start, int end, int expirydate)
        //{
        //    try
        //    {
        //        string VIETNAMESE_CODE = "89";
        //        string HOCHIMINH_CODE = "02";
        //        string HEPA_CODE = "88";
        //        string year = DateTime.Now.Date.ToString("yy");
        //        DateTime createdDate = DateTime.Now.Date;
        //        HashSet<string> codes = new HashSet<string>();
        //        int count = 0;
        //        int amount = end - start + 1;
        //        while (count < amount)
        //        {
        //            //make id
        //            string tmp = (start + count).ToString("00000000");    //always 8 digits: 0000 0012
        //            string passportCode = VIETNAMESE_CODE + HOCHIMINH_CODE + HEPA_CODE + year + tmp;
        //            //generate code
        //            string code = "";
        //            bool isSame = true;
        //            while (isSame == true) //Neu isSame = true thi sinh lai code
        //            {
        //                code = RandomString(3);
        //                isSame = checkSameCode(code);
        //            }
        //            codes.Add(code);
        //            if (count < codes.Count)    //Neu ma code khong bi trung và add thanh cong vao HashSet
        //            {
        //                //Tao passport moi
        //                HepaPassport hp = new HepaPassport();
        //                hp.Code = code;
        //                hp.CreateDate = createdDate;
        //                hp.ExpiryDate = expirydate;
        //                hp.Id = passportCode;
        //                m_hepapassportRepository.Insert(hp);

        //                //cap nha gia tri cua bien count
        //                count = codes.Count;
        //            }
        //        }
        //        m_hepapassportRepository.SaveChanges();
        //    }
        //    catch (Exception e)
        //    {
        //        return ServiceResult.AddError(e.Data.ToString());
        //    }
        //    return ServiceResult.Success;

        //}

        public ServiceResult Insert(int start, int end, int expirydate)
        {
            try
            {
                string VIETNAMESE_CODE = "89";
                string HOCHIMINH_CODE = "02";
                string HEPA_CODE = "88";
                string year = DateTime.Now.Date.ToString("yy");
                DateTime createdDate = DateTime.Now.Date;
                HashSet<string> codes = new HashSet<string>();
                int amount = 1028; //Hiện tại dùng 1029 mã code kể cả code 000 không sử dụng đến
                string[] trueListCode = { "JE8", "ZLH", "UR5", "67K", "T80", "CBE", "URA", "TR4", "STA", "749", "VR2", "A1F", "EDS", "57P", "T4O", "R96", "3U2", "1HK", "S33", "8GR", "470", "45E", "YHC", "KT5", "YNH", "MEJ", "G06", "SRS", "8K3", "IUT", "MQD", "TIP", "FBM", "KYM", "XQ6", "3X1", "JLM", "W72", "HC7", "49Y", "HMT", "YZF", "0R6", "SPW", "01I", "LXS", "T93", "Q1N", "30A", "6EB", "14H", "5OX", "EII", "6JB", "JX0", "34G", "AO2", "7RZ", "RMU", "OY0", "0EF", "JW6", "SFZ", "QR9", "W8L", "XPP", "T7M", "M58", "U5J", "XJM", "3BM", "JF1", "4WJ", "5JG", "3X7", "KOE", "WQK", "LDI", "WFU", "X77", "MU2", "GXE", "DJT", "ZWT", "0BN", "MTO", "26H", "1YG", "N4B", "G9R", "T58", "S0N", "UCU", "HCD", "3Y7", "FV9", "BU2", "TD6", "OBA", "XTP", "LEV", "SBU", "WWD", "4C4", "IPJ", "RO7", "8EY", "LTB", "CIE", "5CH", "FUC", "UNN", "FR3", "MDA", "MXJ", "IAD", "UPU", "XXN", "K2Q", "A80", "W6T", "ZZ9", "L1H", "AWM", "WE1", "9BO", "WLY", "BOA", "NUD", "2YG", "XO4", "4BD", "FFL", "U76", "CYG", "AYF", "CAE", "F5J", "GS1", "IKE", "0CK", "VFB", "RKI", "QQK", "CK7", "JTC", "BRV", "5YB", "KOQ", "JKK", "T91", "6U3", "9FI", "J7Z", "336", "ZHS", "JKQ", "YPW", "680", "T1F", "6AA", "WXJ", "589", "56I", "H0L", "YAL", "PKU", "ESZ", "KXS", "97B", "GNZ", "59B", "L39", "04Q", "BDS", "Z7H", "TEH", "DTX", "8OU", "LLB", "Q87", "5KF", "JNB", "4Y6", "VA0", "WSB", "V2N", "2TU", "CQX", "UAY", "GT3", "YU2", "BQG", "YSN", "SKF", "EWO", "JCE", "ZEZ", "YY9", "URR", "83S", "ZAQ", "KJI", "WJ2", "087", "A7T", "G2H", "C2Z", "TQP", "A9D", "C71", "1RN", "7OL", "T8Z", "84Q", "LCW", "LP3", "MC5", "CD9", "EO5", "U1W", "M6B", "HTH", "WWY", "E76", "40Y", "8ZZ", "A0B", "C2M", "L4T", "Q4X", "YWI", "PV1", "E00", "6Q5", "E9W", "RP2", "T3L", "NKG", "G9O", "FL3", "UFX", "FP2", "4IW", "YF2", "56M", "S69", "YM0", "0XD", "2TE", "3JL", "1V2", "1S0", "AGC", "9BX", "H4L", "FS9", "FM6", "GDD", "OJ5", "MYA", "N9S", "Q3D", "1X9", "M3U", "58W", "57T", "LSB", "0N8", "OFC", "KPN", "X38", "VI6", "92D", "B44", "JOM", "IRY", "B2Q", "WEV", "TD8", "I6V", "U61", "EG3", "PD2", "UHD", "LRO", "Q7K", "4ZA", "WTR", "GP8", "H0J", "PAQ", "GWA", "RRJ", "H68", "EH7", "03P", "M17", "75G", "ST0", "2N7", "1VS", "E6Z", "KOA", "1JE", "FJD", "8A2", "1TI", "CFC", "OKU", "L99", "G1W", "NK4", "H3R", "A5E", "JBJ", "MDK", "TT5", "ILG", "IIF", "I5R", "TSQ", "AHW", "Y2A", "0UT", "NJW", "MM5", "75W", "ES4", "BNU", "UQ9", "O9N", "61G", "SND", "556", "AV3", "G2C", "CID", "BG3", "37W", "G4F", "IGG", "5Y3", "OK8", "CV0", "8Z7", "6D3", "RW1", "NKQ", "IPY", "UCY", "0K1", "L1R", "EPH", "BBN", "J1O", "0FA", "VMU", "JY0", "4RW", "DMZ", "BO3", "VOP", "MY3", "FWD", "YE1", "RQU", "SFG", "6JO", "DAG", "ZUN", "348", "M8H", "HKB", "YY6", "OE7", "X4T", "WS1", "TXJ", "ZO1", "MJW", "7N4", "GC2", "244", "PTM", "Z1M", "737", "2C9", "DPK", "8PS", "F3T", "420", "CVA", "ZP4", "T5R", "CPG", "QNE", "LAC", "CBI", "VR6", "Z57", "SWD", "WQM", "A4S", "7OO", "BIT", "CHX", "H5L", "3AT", "ELL", "HC4", "PC2", "VOG", "BJY", "L68", "KBY", "8B7", "YWH", "UPH", "9CN", "76Y", "2J2", "NM9", "JMW", "UE9", "WHJ", "YM3", "RU8", "YL7", "M4E", "IHQ", "ZQA", "SME", "MRQ", "CWW", "JEF", "MSR", "COV", "7J7", "EWN", "XUB", "V5O", "KSW", "57N", "V2R", "IF4", "B9T", "9DI", "UML", "TXR", "GT9", "506", "7GA", "AYB", "3X6", "67M", "6I6", "AL9", "585", "UI1", "3GK", "LR6", "LZ8", "28V", "TUF", "0L7", "PTJ", "N4A", "HNV", "IJP", "Q22", "DMT", "5IF", "6HY", "EV6", "ERJ", "6B0", "04E", "H8F", "8HZ", "FRZ", "2GR", "J9I", "CSP", "1LQ", "A6R", "P3W", "58D", "HDI", "4RM", "JUM", "F74", "8PU", "9MY", "D39", "XDR", "1YY", "PGJ", "8QK", "BLJ", "6RD", "TQM", "NQB", "3GO", "V7C", "9FX", "9RC", "28Q", "QP7", "WFG", "F0W", "KJE", "K5E", "5P7", "NL1", "8XD", "DLS", "6KW", "YPQ", "2BA", "W0I", "41I", "CRX", "OK6", "GJ5", "WSV", "BJA", "R9K", "S1E", "BY4", "KFC", "GMW", "6T2", "7QJ", "RDP", "N1G", "Y30", "K2Z", "UOD", "QFD", "I9V", "434", "MY2", "GUF", "X43", "SXB", "544", "1H7", "370", "P4T", "UUU", "4NZ", "NLT", "JGX", "HB7", "9V7", "MMN", "Z7C", "DHL", "MNZ", "6DC", "QXJ", "3LH", "VAU", "KAP", "OV0", "QQA", "R56", "Z8V", "S2G", "G8M", "E3R", "04R", "UZM", "6KR", "8AM", "PL8", "ZUW", "FG1", "OQM", "9HU", "V04", "PC5", "ZPF", "L7K", "JYZ", "09O", "MNY", "45V", "RHC", "PMR", "HYW", "FAJ", "ZD0", "7QL", "ABW", "WEB", "2XZ", "8ZS", "0PY", "Y88", "AMH", "6H0", "3G8", "KD3", "IR4", "N40", "08U", "U1Q", "OHQ", "R1N", "DPH", "CCQ", "0VU", "DYX", "XRY", "7TM", "0TH", "GO1", "YNM", "SZL", "WYA", "4XM", "SSB", "48U", "L9J", "136", "D2L", "T19", "JD4", "MIB", "DLU", "0HW", "RV2", "16M", "CPU", "D7P", "14U", "6UX", "91Y", "9ND", "7N9", "Z3F", "0EI", "PXA", "TVA", "58J", "J8R", "3PR", "9BB", "39C", "RQ2", "ZD1", "ROB", "DNH", "9UV", "3DH", "EVK", "L42", "9IU", "5DZ", "A6A", "LYH", "PQC", "6GO", "IHL", "DTO", "Q37", "XGJ", "I9M", "C79", "FLW", "F91", "52J", "3Q0", "GEL", "PKB", "ULH", "YAE", "WXL", "18H", "8NX", "3FF", "8R4", "PDQ", "BRH", "UD7", "REE", "S19", "6JH", "ZW0", "ZXC", "1ME", "7E2", "C8J", "UKA", "5O7", "T8P", "XYP", "CNB", "V00", "4ST", "FPK", "IO9", "H6M", "O6U", "6ZT", "JEP", "SJW", "1C0", "6OD", "XEP", "6A7", "PSG", "5HW", "6SU", "91W", "QWG", "SAS", "1QY", "87N", "Z24", "JJD", "5VW", "XWM", "L87", "QHF", "AR7", "SGT", "I60", "LXB", "6RF", "BQQ", "X55", "6XU", "I4M", "7C6", "JPS", "UVY", "HIM", "G4C", "RUG", "50U", "1WA", "ACC", "6ZI", "9B6", "DHE", "EQH", "IL0", "AOV", "V1N", "K1E", "2UW", "2JM", "3LT", "ED6", "C0L", "M74", "FWZ", "00R", "7P7", "WNL", "K1I", "P7D", "MD7", "ZIU", "8H3", "W17", "Y1M", "KM3", "LM0", "6PT", "91Q", "YNS", "KDE", "1R6", "7P3", "C6T", "UJJ", "Q60", "Y68", "9VA", "2AN", "5LC", "6L3", "7WD", "TU7", "KIL", "4QZ", "3WW", "88O", "Q1O", "IRJ", "JH3", "05O", "4RY", "K38", "ZZC", "PDO", "GWI", "FBG", "EFD", "96E", "54W", "6ZK", "FG2", "BWM", "Z4F", "R86", "1AV", "Z70", "QP0", "DAF", "I8E", "VM3", "DZ5", "Q0O", "L78", "OI4", "LYC", "FH8", "PR5", "Y2P", "472", "LP7", "6ZO", "QLQ", "O0V", "KH9", "PYR", "DIS", "YWA", "V76", "0RI", "7Y5", "TYX", "IPD", "2P7", "63V", "TBS", "WLW", "S4O", "8TU", "YF5", "XU8", "BIF", "D6Y", "RTM", "WIV", "R04", "WJR", "76S", "QYS", "T03", "FZW", "GIN", "9W6", "CMH", "2M9", "T1T", "K4G", "YAF", "31W", "2A3", "BUL", "JT1", "P2B", "U28", "F7F", "JNE", "53A", "U2D", "MJZ", "0ZT", "W54", "U3N", "E5B", "S7I", "U7Q", "2TA", "JWN", "6ZS", "WFD", "ABV", "ZO0", "L85", "A7S", "M3J", "QYJ", "233", "ULI", "YFP", "WI0", "27C", "O5I", "J01", "UKF", "92W", "VRL", "OW4", "XN8", "4JS", "SJV", "IVR", "LBV", "4VX", "Q19", "O2W", "MMJ", "DCL", "C49", "J25", "MB9", "SIE", "A4H", "NC2", "NAS", "XBQ", "I58", "GUD", "SWK", "XN4", "JQT", "UED", "BXB", "DID", "6QF", "MZE", "4DI", "8US", "6J2", "SQ7", "IL6", "XK8", "ATI", "7PD", "QVG", "82Z", "G3L", "IG5", "N74", "RYG", "WQD", "DPD", "1SW", "F4A", "GRP", "QPJ", "AI4", "803", "W0T", "PRH", "A1K", "REY", "O9S", "90E", "KQ5", "JQU", "21P", "M6W", "XZP", "KJL", "ZOI", "LNO", "YIP", "O25", "1Z4", "LGB", "FAW", "2KM", "0UE", "KXG", "52D", "GIC", "L0A", "32O", "AVC", "2JU", "P2Z", "EW2", "BDD", "EFH", "F7C", "SLQ", "JCH", "RCE", "9T5", "W23", "6V9", "1VM", "FOC", "L29", "58Q", "LDG", "J1W", "S0F", "ZSC", "NFX", "TQC", "ME7", "AWN", "2VO", "RFA", "755", "QAI", "QN8", "XO5", "P7Q", "H21", "0ME", "1ZE", "6TG", "XU3", "6KK", "MMG", "XK7", "YG2", "2RK", "JJF", "SR5", "KX3", "8B2", "LYB", "XLS", "R4E", "112", "XD0" };
                int count = 0;
                while (count < amount)
                {
                    //make id
                    string tmp = (1 + count).ToString("00000000");    //always 8 digits, start from 0000 0001 to 0000 xxxx
                    string passportCode = VIETNAMESE_CODE + HOCHIMINH_CODE + HEPA_CODE + year + tmp;
                    //Tao passport moi
                    HepaPassport hp = new HepaPassport();
                    hp.Code = trueListCode[count];
                    hp.CreateDate = createdDate;
                    hp.ExpiryDate = expirydate;
                    switch (tmp)
                    {
                        case "00000006": hp.ExpiryDate = 730;
                            break;
                        case "00000011": hp.ExpiryDate = 730;
                            break;
                        case "00000012": hp.ExpiryDate = 730;
                            break;
                        case "00000013": hp.ExpiryDate = 36135;
                            break;
                        default: hp.ExpiryDate = 365;
                            break;
                    }
                    hp.Id = passportCode;
                    m_hepapassportRepository.Insert(hp);

                    //cap nha gia tri cua bien count
                    codes.Add(hp.Code);
                    count = codes.Count;
                }
                m_hepapassportRepository.SaveChanges();
            }
            catch (Exception e)
            {
                return ServiceResult.AddError(e.Data.ToString());
            }
            return ServiceResult.Success;

        }

        public async Task<ServiceResult> InsertAsync(int start, int end, int expirydate)
        {
            return await Task.Run(() => Insert(start, end, expirydate));
        }

        public Core.Helpers.ServiceResult Delete(Core.Entities.HepaPassport e)
        {
            try
            {
                m_hepapassportRepository.Delete(e);
                m_hepapassportRepository.SaveChanges();
            }
            catch (Exception ex)
            {
                return ServiceResult.AddError(ex.Message);
            }
            return ServiceResult.Success;
        }

        public async Task<ServiceResult> DeleteAsync(Core.Entities.HepaPassport e)
        {
            try
            {
                await m_hepapassportRepository.DeleteAsync(e);
                m_hepapassportRepository.SaveChanges();
            }
            catch (Exception ex)
            {
                return ServiceResult.AddError(ex.Message);
            }
            return ServiceResult.Success;
        }

        public Core.Helpers.ServiceResult Update(Core.Entities.HepaPassport e)
        {
            try
            {
                m_hepapassportRepository.Update(e);
                m_hepapassportRepository.SaveChanges();
            }
            catch (Exception ex)
            {
                return ServiceResult.AddError(ex.Message);
            }
            return ServiceResult.Success;
        }

        public async Task<ServiceResult> UpdateAsync(Core.Entities.HepaPassport e)
        {
            try
            {
                await m_hepapassportRepository.UpdateAsync(e);
                m_hepapassportRepository.SaveChanges();
            }
            catch (Exception ex)
            {
                return ServiceResult.AddError(ex.Message);
            }
            return ServiceResult.Success;
        }

        public IList<Core.Entities.HepaPassport> GetAll()
        {
            var list = m_hepapassportRepository.Find().ToList(); ;
            return list;
        }

        public async Task<IList<Core.Entities.HepaPassport>> GetAllAsync()
        {
            var list = await m_hepapassportRepository.FindAsync(); ;
            return list.ToList();
        }

        public IList<Core.Entities.HepaPassport> GetByCreatedDate(DateTime date)
        {
            var list = m_hepapassportRepository.FindEntities(x => x.CreateDate == date).ToList(); ;
            return list;
        }

        public async Task<IList<Core.Entities.HepaPassport>> GetByCreatedDateAsync(DateTime date)
        {
            var list = await m_hepapassportRepository.FindEntitiesAsync(x => x.CreateDate == date);
            return list.ToList();
        }

        public Core.Entities.HepaPassport GetById(string id)
        {
            var e = m_hepapassportRepository.FindEntity(x => x.Id == id);
            return e;
        }

        public async Task<Core.Entities.HepaPassport> GetByIdAsync(string id)
        {
            var e = await m_hepapassportRepository.FindEntityAsync(x => x.Id == id);
            return e;
        }

        public Core.Entities.HepaPassport GetByCode(string code)
        {
            var e = m_hepapassportRepository.FindEntity(x => x.Code == code);
            return e;
        }

        public async Task<Core.Entities.HepaPassport> GetByCodeAsync(string code)
        {
            var e = await m_hepapassportRepository.FindEntityAsync(x => x.Code == code);
            return e;
        }



        public bool IsUsed(string code, string id)
        {
            //IPasswordHasher hp = new PasswordHasher();  //Create password crypto object
            string passportCode = "";
            //string tmp = "";
            var passport = m_hepapassportRepository.FindEntity(x => x.Id == id);  //find passport with id

            if (passport != null)  //if passport is existed
            {
                passportCode = passport.Code;    //get passport code
                //tmp = hp.HashPassword(code); //hash user input code
                if (code == passportCode)   //compare database code and user input code
                {
                    if (passport.UserId == null)
                    {
                        //if userID is null, the passport is unused
                        return false;
                    }
                    else //if != null, the passport is used
                    {
                        return true;
                    }
                }
            }
            return true;    //if passport is not existed 
        }

        public async Task<bool> IsUsedAsync(string code, string id)
        {
            return await Task.Run(() => IsUsed(code, id));
        }

        public IList<HepaPassport> GetAllUsedCode()
        {
            IList<HepaPassport> passports = m_hepapassportRepository.FindEntities(x => x.UserId != null).ToList();
            return passports;
        }

        public async Task<IList<HepaPassport>> GetAllUsedCodeAsync()
        {
            return await Task.Run(() => GetAllUsedCode());
        }



        public ServiceResult Active(string userId, string code, string id)
        {
            try
            {
                //IPasswordHasher ph = new PasswordHasher();
                var passport = m_hepapassportRepository.FindEntity(x => x.Id == id);

                if (passport != null)  // if passport id right
                {
                    var isUsed = IsUsed(code, id);
                    if (!isUsed)
                    {
                        //Check user
                        var user = m_userRepository.FindEntity(x => x.Id == userId);
                        if (user != null)
                        {
                            string passportCode = passport.Code;    //get passport code
                            if (code == passportCode)
                            {
                                //Update user table
                                user.IsPaid = true;
                                user.ExpDate += passport.ExpiryDate;
                                m_userRepository.Update(user);
                                m_userRepository.SaveChanges();

                                //Update hepapasport table
                                passport.UserId = userId;
                                passport.ActiveDate = DateTime.Now.Date;
                                m_hepapassportRepository.Update(passport);
                                m_hepapassportRepository.SaveChanges();
                                return ServiceResult.Success;
                            }
                            else
                            {
                                UserService us = new UserService(m_userRepository, m_hepapassportRepository);
                                us.CountBlock(userId);
                                return ServiceResult.AddError("Mã kích hoạt hoặc mã thẻ không đúng");
                            }
                        }
                        else
                        {
                            return ServiceResult.AddError("Người dùng không tồn tại");
                        }
                    }
                    else
                    {
                        UserService us = new UserService(m_userRepository, m_hepapassportRepository);
                        us.CountBlock(userId);
                        return ServiceResult.AddError("Mã đã được sử dụng");
                    }
                }
                else
                {
                    UserService us = new UserService(m_userRepository, m_hepapassportRepository);
                    us.CountBlock(userId);
                    return ServiceResult.AddError("Mã kích hoạt hoặc mã thẻ không đúng");
                }
            }
            catch (Exception e)
            {
                return ServiceResult.AddError(e.Data.ToString());
            }
        }

        public async Task<ServiceResult> ActiveAsync(string userId, string code, string id)
        {
            return await Task.Run(() => Active(userId, code, id));
        }


        //SUB-METHODs
        private string Random3Digits()
        {
            var str = "";
            Random random = new Random();
            for (int i = 0; i < 4; i++)
            {
                str += random.Next(0, 10);
            }
            return str;
        }
        private string RandomString(int size)
        {
            string chars = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            char[] charArray = chars.ToCharArray();
            Random rand = new Random(Guid.NewGuid().GetHashCode());
            StringBuilder strBuilder = new StringBuilder();
            for (int i = 0; i < size; i++)
            {
                char c = charArray[rand.Next(0, 36)];
                strBuilder.Append(c);
            }
            return strBuilder.ToString();
        }
        private bool checkSameCode(string code)
        {
            IList<string> codes = m_hepapassportRepository.Find().Select(x => x.Code).ToList();
            for (int i = 0; i < codes.Count; i++)
            {
                if (code == codes[i])
                {
                    return true;
                }
            }
            return false;
        }

        public IList<HepaPassport> GetUserActiveCodes(string userId)
        {
            var passports = m_hepapassportRepository.FindEntities(x => x.UserId == userId);
            return passports.ToList();
        }

        public async Task<IList<HepaPassport>> GetUserActiveCodesAsync(string userId)
        {
            return await Task.Run(() => GetUserActiveCodes(userId));
        }
    }
}
