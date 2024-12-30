<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="meena_plastic.products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Our Products</h2>
        <p>We offer a wide range of products, including:</p>
        <div class="products">
            <div class="product-card">
                <img src="images/container.jpg" alt="Biodegradable Packaging">
                <h3>Biodegradable Packaging Materials</h3>
                <p>Our packaging solutions decompose naturally and are environmentally friendly.</p>
                <asp:Button ID="Button1" runat="server" Text="Add to Cart" OnClick="AddToCart" CommandArgument="Biodegradable Packaging Materials" />
            </div>
            <div class="product-card">
                <img src="images/industrial.jpg" alt="Industrial Plastic Components">
                <h3>Industrial Plastic Components</h3>
                <p>High-quality plastic components used in various industrial applications.</p>
                <asp:Button ID="Button2" runat="server" Text="Add to Cart" OnClick="AddToCart" CommandArgument="Industrial Plastic Components" />
            </div>
            <div class="product-card">
                <img src="images/garbagebag.jpg" alt="Custom-designed Plastic Products">
                <h3>Custom-designed Plastic Products</h3>
                <p>Tailored plastic products to meet the specific needs of our clients.</p>
                <asp:Button ID="Button3" runat="server" Text="Add to Cart" OnClick="AddToCart" CommandArgument="Custom-designed Plastic Products" />
            </div>
        </div>
    </div>
</asp:Content>
