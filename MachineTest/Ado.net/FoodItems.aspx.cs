using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ado.net
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

                SqlConnection con = new SqlConnection(cs);

                SqlDataAdapter adapter = new SqlDataAdapter("select  id,FoodItem+'('+cast(price as varchar)+')' as items from FoodItems", con);
                DataSet ds = new DataSet();
                adapter.Fill(ds);

                ds.Tables[0].TableName = "Food";


                ListBox1.DataTextField = "items";
                ListBox1.DataValueField = "Id";
                ListBox1.DataSource = ds;
                ListBox1.DataBind();
                ListBox1.SelectionMode = ListSelectionMode.Multiple;
                ListBox1.AutoPostBack = true;
            }

        }
        List<ListItem> subject = new List<ListItem>();

        protected void AddMultiple_Click(object sender, EventArgs e)
        {
            int sum = 0;

            if (!string.IsNullOrEmpty(ListBox1.SelectedValue))
            {
                foreach (ListItem i in ListBox1.Items)
                {
                    if (i.Selected)
                    {
                     int price = Convert.ToInt32( i.Text.Substring(i.Text.IndexOf('(')+1,(i.Text.IndexOf(')')-i.Text.IndexOf('('))-1));
                     int totPrice = price*Convert.ToInt32(DropDownList1.SelectedValue);

                        sum += totPrice;

                        if (!ListBox2.Items.Contains(i))
                        {
                           
                            ListBox2.Items.Add(new ListItem(i.Text + "[" + totPrice.ToString() + "]",i.Value));
                        }
                    }
                }
                lblTotalBill.Text = sum.ToString();
            }
        }

        protected void AddAll_Click(object sender, EventArgs e)
        {
            int sum = 0;

            foreach (ListItem i in ListBox1.Items)
            {
                
                    
                     int price = Convert.ToInt32( i.Text.Substring(i.Text.IndexOf('(')+1,(i.Text.IndexOf(')')-i.Text.IndexOf('('))-1));
                     int totPrice = price*Convert.ToInt32(DropDownList1.SelectedValue);

                        sum += totPrice;

                        if (!ListBox2.Items.Contains(i))
                        {
                           
                            ListBox2.Items.Add(new ListItem(i.Text + "[" + totPrice.ToString() + "]",i.Value));
                        }
            }
            lblTotalBill.Text = sum.ToString();
            
        }

        protected void DeleteMultiple_Click(object sender, EventArgs e)
        {

            

            if (ListBox2.Items.Count>0)
            {
                for (int i = 0; i < ListBox2.Items.Count; i++)
                {
                    if (ListBox2.Items[i].Selected)
                    {
                        ListBox2.Items.RemoveAt(i);
                        i--;
                    }
                }

            }

        }

        protected void DeleteAll_Click(object sender, EventArgs e)
        {

            ListBox2.Items.Clear();

            lblTotalBill.Text = "";

        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            Label1.Text += "Your Order Is Placed Successfully!!";
            Label2.Text += "Your Bill Amount Is: " + lblTotalBill.Text;
        }  
     
    }
}