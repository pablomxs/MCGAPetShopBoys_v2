using PetShopBoys.BE;
using PetShopBoys.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetShopBoys.BLL
{
    public class ServiceBLL
    {
        #region Criptografía
        public static String EncryptMD5(String plaintext)
        {
            using (System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create())
            {
                byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(plaintext);
                byte[] hashBytes = md5.ComputeHash(inputBytes);
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < hashBytes.Length; i++)
                {
                    sb.Append(hashBytes[i].ToString("X2"));
                }
                return sb.ToString();
            }
        }
        #endregion

        #region Bitácora

        public static bool WriteEventLogEntry(LogEvent logEntry)
        {
            return ServiceDAO.WriteEventLogEntry(logEntry);
        }

        #endregion

    }
}
