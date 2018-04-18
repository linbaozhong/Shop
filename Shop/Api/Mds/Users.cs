using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Snow.Orm;

namespace Api.Mds
{
    public class Users : BaseEntity
    {
        public static Table<Users> Table = new Table<Users>(dbs.Db);
        public Users() : base(Table.Name) { }

        public int ID { set { Set(value); } get { return Get<int>(); } }
        public long Mobile { set { Set(value); } get { return Get<long>(); } }
    }
}
