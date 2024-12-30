using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace meena_plastic
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Populate Cart (You can fetch from a session or database)
                List<CartItem> cartItems = GetCartItems();
                Session["CartItems"] = cartItems; // Save the cart to session
                CartRepeater.DataSource = cartItems;
                CartRepeater.DataBind();

                UpdateGrandTotal();
            }
        }

        // Sample cart item class (replace with your actual model)
        public class CartItem
        {
            public string ProductName { get; set; }
            public decimal Price { get; set; }
            public int Quantity { get; set; }
            public decimal TotalPrice => Price * Quantity;
        }

        // This method is just a placeholder for fetching cart items (from a session or database)
        private List<CartItem> GetCartItems()
        {
            return new List<CartItem>
            {
                new CartItem { ProductName = "Product 1", Price = 20, Quantity = 1 },
                new CartItem { ProductName = "Product 2", Price = 50, Quantity = 2 }
            };
        }

        // Event triggered when quantity changes
        protected void QuantityChanged(object sender, EventArgs e)
        {
            TextBox quantityTextBox = (TextBox)sender;
            RepeaterItem item = (RepeaterItem)quantityTextBox.NamingContainer;

            // Get the product price and calculate new total for the item
            decimal price = Convert.ToDecimal(((Label)item.FindControl("PriceLabel")).Text);
            int quantity = int.Parse(quantityTextBox.Text);
            decimal itemTotal = price * quantity;

            // Update the item total display
            Label itemTotalLabel = (Label)item.FindControl("ItemTotalLabel");
            itemTotalLabel.Text = "$" + itemTotal.ToString();

            // Update grand total
            UpdateGrandTotal();
        }

        // Update grand total
        private void UpdateGrandTotal()
        {
            decimal grandTotal = 0;
            List<CartItem> cartItems = (List<CartItem>)Session["CartItems"];

            foreach (var item in cartItems)
            {
                grandTotal += item.TotalPrice;
            }

            GrandTotalLabel.Text = "$" + grandTotal.ToString();
        }

        // Add a new product to the cart
        protected void AddProduct(object sender, EventArgs e)
        {
            // Example new product to add
            CartItem newProduct = new CartItem
            {
                ProductName = "New Product",
                Price = 30,  // Example price
                Quantity = 1
            };

            // Get the current cart from session
            List<CartItem> cartItems = (List<CartItem>)Session["CartItems"];

            // Add new product to cart
            cartItems.Add(newProduct);

            // Update session and repeater
            Session["CartItems"] = cartItems;
            CartRepeater.DataSource = cartItems;
            CartRepeater.DataBind();

            // Update grand total
            UpdateGrandTotal();
        }

        protected void Checkout(object sender, EventArgs e)
        {
            // Proceed to checkout logic
            Response.Redirect("CheckoutPage.aspx");
        }
    }
}
