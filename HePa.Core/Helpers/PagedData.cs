using System.Collections.Generic;
namespace HePa.Core.Helpers
{
    /// <summary>
    /// For loading list
    /// </summary>
    /// <typeparam name="T">Template for all entity</typeparam>
    public class PagedData<T> : IEnumerable<T> where T : BaseEntity
    {
        public IList<T> Data { get; set; }
        public int NumberOfPages { get; set; }
        public int CurrentPage { get; set; }

        public PagedData()
        {
            Data = new List<T>();
        }

        public IEnumerator<T> GetEnumerator()
        {
            return Data.GetEnumerator();
        }

        System.Collections.IEnumerator System.Collections.IEnumerable.GetEnumerator()
        {
            return Data.GetEnumerator();
        }
    }
}
