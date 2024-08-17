using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class DataModel
    {
        SqlConnection con;SqlCommand cmd;

        public DataModel()
        {
            con = new SqlConnection(ConnectionStrings.ConStr);
            cmd = con.CreateCommand();
        }

        #region Kategori İşlemleri

        public List<Category> KategorileriGetir()
        {
            List<Category> kategoriler = new List<Category>();
            try
            {
                cmd.CommandText = "SELECT CategoryID, CategoryName, Description FROM Categories";
                cmd.Parameters.Clear();
                con.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Category c = new Category();
                    c.CategoryID = reader.GetInt32(0);
                    c.CategoryName = reader.GetString(1);
                    c.Description = reader.GetString(2);
                    kategoriler.Add(c);
                }
                return kategoriler;
            }
            catch
            {
                return null;
            }
            finally
            {
                con.Close();
            }
        }

        public bool KategoriEkle(Category c)
        {
            try
            {
                cmd.CommandText = "INSERT INTO Categories(CategoryName,Description) VALUES(@categoryName, @description)";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@categoryName", c.CategoryName);
                cmd.Parameters.AddWithValue("@description", c.Description);
                con.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;
            }
            finally
            {
                con.Close();
            }
        }

        #endregion
    }
}
