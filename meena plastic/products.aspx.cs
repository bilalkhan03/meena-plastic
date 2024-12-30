using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace meena_plastic
{
    public partial class products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddToCart(object sender, EventArgs e)
        {
            var button = (System.Web.UI.WebControls.Button)sender;
            string product = button.CommandArgument;

            // Retrieve cart from Session or initialize a new one
            List<string> cart = Session["Cart"] as List<string> ?? new List<string>();

            // Add the selected product to the cart
            cart.Add(product);

            // Save updated cart to Session
            Session["Cart"] = cart;

            // Optionally, display feedback to the user
            Response.Write("<script>alert('Product added to cart!');</script>");
        }
    }
}
    
