using PetShopBoys.BE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetShopBoys.DAL
{
    public class ServiceDAO
    {
        public static bool WriteEventLogEntry(LogEvent logEntry)
        {
            string sqlQuery = "INSERT INTO log_tbl (severity,message,datetime,principalId,eventId,category)" +
                "VALUES (@severity,@message,@datetime,@principalId,@eventId,@category)";
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@severity",logEntry.Severity));
            parameters.Add(new SqlParameter("@message", logEntry.Message));
            parameters.Add(new SqlParameter("@datetime", logEntry.DateTime));
            parameters.Add(new SqlParameter("@principalId", logEntry.Principal));
            parameters.Add(new SqlParameter("@eventId", logEntry.EventId));
            parameters.Add(new SqlParameter("@category", logEntry.EventCategory));

            DBAccess sqlAccess = DBAccess.GetInstance();
            int insertedRegistries = sqlAccess.ExecuteNonQuery(sqlQuery, parameters);
            bool returnedValue = false;
            if (insertedRegistries > 0)
            {
                returnedValue = true;
                //actualizar DVH
            }
            return returnedValue;
        }

        public string GetSingleDVH(int RegistryID, string tableName)
        {
            DBAccess sqlAccess = DBAccess.GetInstance();
            string returnedDvh = string.Empty;

        }
    }
}
