using MySql.Data.MySqlClient;
using Nancy.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace EasyHouseRent.Model
{
    public class BaseData
    {
        MySqlConnection connection;
    

        public BaseData()
        {
            connection = new MySqlConnection("datasource = be9x9hl4jxninrg9fjld-mysql.services.clever-cloud.com; port = 3306; username = uxghxtan5jwr5hgm; password = x7zr78Y542CJ6jvf7mpQ; database = be9x9hl4jxninrg9fjld ; SSLMode = none");
        }
        public string executeSql(string sql)
        {
            string result = "";
            try
            {
                connection.Open();
                MySqlCommand cmd = new MySqlCommand(sql, connection);
                int rows = cmd.ExecuteNonQuery();

                if (rows > -1)
                {
                    result = "Correct";
                }
                else
                {
                    result = "Incorrect";
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                result = ex.Message;

            }
            return result;
        }

        public DataTable getTable(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                connection.Open();
                MySqlCommand cmd = new MySqlCommand(sql, connection);

                MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);

                adapter.Fill(dt);
                connection.Close();
                adapter.Dispose();
            }
            catch
            {
                dt = null;
            }
            return dt;
        }


        public string ConvertDataTabletoString(string sql)
        {
            DataTable dt = new DataTable();
            using (connection)
            {
                using (MySqlCommand cmd = new MySqlCommand(sql, connection))
                {
                    connection.Open();
                    MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                    adapter.Fill(dt);
                    JavaScriptSerializer serializer = new JavaScriptSerializer();
                    List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
                    Dictionary<string, object> row;
                    foreach (DataRow dr in dt.Rows)
                    {
                        row = new Dictionary<string, object>();
                        foreach (DataColumn col in dt.Columns)
                        {
                            row.Add(col.ColumnName, dr[col]);
                        }
                        rows.Add(row);
                    }
                    return serializer.Serialize(rows);
                }
            }
        }
    }
}
