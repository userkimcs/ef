using System;

namespace HePa.Core.Helpers
{
    public class Factory
    {
        public static DateTime CreateDateTime(string Day, string Month, string Year)
        {
            int day = 0, month = 0, year = 0;
            if (String.IsNullOrEmpty(Day) == true)
            {
                day = 1; 
            }
            else
            {
                day = System.Convert.ToInt32(Day);
            }
            if (String.IsNullOrEmpty(Month) == true)
            {
                month = 1; 
            }
            else
            {
                month = System.Convert.ToInt32(Month);
            }
            if (String.IsNullOrEmpty(Year) == true)
            {
                year = System.DateTime.Now.Year;
            }
            else
            {
                year = System.Convert.ToInt32(Year);
            }
            return new DateTime(year, month, day); 
        }

        public static string CreatePlace(string City, string District, string Town)
        {
            return City + "," + District + "," + Town;
        }
    }
}
