<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="meena_plastic.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cart-container">
        <h2>Your Cart</h2>

        <asp:Repeater ID="CartRepeater" runat="server">
            <ItemTemplate>
                <div class="cart-item">
                    <p><%# Eval("ProductName") %></p>
                    <p>Price: $<%# Eval("Price") %></p>

                    <!-- Quantity field -->
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Eval("Quantity") %>' OnTextChanged="QuantityChanged" AutoPostBack="true" />
                    <asp:Label ID="ItemTotalLabel" runat="server" Text='<%# Eval("TotalPrice") %>' />

                    <br />
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <h3>Grand Total: $<asp:Label ID="GrandTotalLabel" runat="server" Text="0"></asp:Label></h3>

        <!-- Add Product Button -->
        <asp:Button ID="AddProductButton" runat="server" Text="Add Product" OnClick="AddProduct" />
        <asp:Button ID="CheckoutButton" runat="server" Text="Checkout" OnClick="Checkout" />
    </div>
</asp:Content>
