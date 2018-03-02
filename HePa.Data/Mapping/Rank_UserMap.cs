using HePa.Core.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HePa.Data.Mapping
{
    public class Rank_UserMap : EntityTypeConfiguration<Rank_User>
    {
        public Rank_UserMap()
        {
            Property(t => t.UserId);
            Property(t => t.RankId);
            Property(t => t.CreatedDate).IsOptional();
            ToTable("Rank_User");
        }

    }
}
