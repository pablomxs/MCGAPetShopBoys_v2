using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Data.SqlClient;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace PetShopBoys.DAL
{
    public class DBAccess
    {
        private string connString = ConfigurationManager.ConnectionStrings["sqlConnection"].ConnectionString;

        #region SINGLETON - Creación de instancia de conexión a BD.
        private static DBAccess instance;
        public static DBAccess GetInstance()
        {
            if (instance == null)
            {
                instance = new DBAccess();
            }
            return instance;
        }
        #endregion

        public DataTable ExecuteReader(string sqlQuery, List<SqlParameter>parameters)
        {
            DataTable outputTable = new DataTable();
            using (SqlConnection sqlConn = new SqlConnection(this.connString))
            {
                SqlCommand sqlComm = new SqlCommand();
                sqlComm.Connection = sqlConn;
                sqlComm.CommandText = sqlQuery;
                sqlComm.CommandType = CommandType.Text;
                foreach (SqlParameter item in parameters)
                {
                    sqlComm.Parameters.Add(item);
                }
                sqlConn.Open();
                SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlComm);
                outputTable.Clear();
                sqlAdapter.Fill(outputTable);
            }
            return outputTable;
        }

        public int ExecuteNonQuery(string sqlQuery, List<SqlParameter> parameters = null)
        {
            int outputValue = 0;
            using (SqlConnection sqlConn = new SqlConnection(this.connString))
            {
                SqlCommand sqlComm = new SqlCommand();
                sqlComm.Connection = sqlConn;
                sqlComm.CommandText = sqlQuery;
                sqlComm.CommandType = CommandType.Text;
                if (parameters != null)
                {
                    foreach (SqlParameter item in parameters)
                    {
                        sqlComm.Parameters.Add(item);
                    }
                }
                sqlConn.Open();
                outputValue = sqlComm.ExecuteNonQuery();

            }
            return outputValue; //0: Error | >1: Correcto.
        }

        public int ExecuteScalar(string sqlQuery, List<SqlParameter> parameters = null)
        {
            int outputValue;
            using (SqlConnection sqlConn = new SqlConnection(this.connString))
            {
                SqlCommand sqlComm = new SqlCommand();
                sqlComm.Connection = sqlConn;
                sqlComm.CommandText = sqlQuery;
                sqlComm.CommandType = CommandType.Text;
                if (parameters != null)
                {
                    foreach (SqlParameter item in parameters)
                    {
                        sqlComm.Parameters.Add(item);
                    }
                }
                sqlConn.Open();
                object result = sqlComm.ExecuteScalar();
                result = (result == DBNull.Value) ? null : result;
                outputValue = Convert.ToInt32(result);

            }
            return outputValue; //0: Error | >1: Correcto.
        }


    }
}
