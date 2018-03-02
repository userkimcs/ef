using System;
using System.Collections.Generic;

namespace HePa.Core.Helpers
{
    public class DateTimeHelper
    {
        // Get list days from 1 to 31
        public static IList<string> GetListDay()
        {
            IList<string> days = new List<string>();
            for (int i = 1; i <= 31; i++)
            {
                days.Add(i.ToString());
            }
            return days;
        }

        // Get list months from 1 to 12
        public static IList<string> GetListMonth()
        {
            IList<string> months = new List<string>();
            for (int i = 1; i <= 12; i++)
            {
                months.Add(i.ToString());
            }
            return months;
        }


        // Get top 50 recent years
        public static IList<string> GetListYear()
        {
            IList<string> years = new List<string>();
            for (int i = DateTime.Now.Year; i >= DateTime.Now.Year - 50; i--)
            {
                years.Add(i.ToString());
            }
            return years;
        }

    }
}
