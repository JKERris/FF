using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace FF.User
{
    public class User 
    {
        public string UserId { get; set; }
        public string UserPwd { get; set; }


        
        
        public string conStr,comTxt;
        public SqlConnection conn;
        public SqlCommand command;
        public string strSql;
        public SqlDataAdapter dataAdapter;
        public DataSet ds;
        public int count;
        public User(string strSql)
        {
            

            conStr = "Data Source=.;Initial Catalog=manageT;Uid=sa;Pwd=sa;";
            this.strSql = strSql;
            conn = new SqlConnection(conStr);
            command = new SqlCommand();
            command.Connection = conn;
            dataAdapter = new SqlDataAdapter(strSql,conn);
            ds = new DataSet();
            count=dataAdapter.Fill(ds,"User");
            
        }

        public User(string strSql,string comTxt)
        {
            

            this.comTxt = comTxt;
            this.strSql = strSql;
            conStr = "Data Source=.;Initial Catalog=manageT;Uid=sa;Pwd=sa;";
            conn = new SqlConnection(conStr);
            command = new SqlCommand(comTxt,conn);
            dataAdapter = new SqlDataAdapter(strSql, conn);
            ds = new DataSet();
            count = dataAdapter.Fill(ds, "User");

        }

        public User()
        {

        }
    
    }
}