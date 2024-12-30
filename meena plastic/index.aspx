<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="meena_plastic.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" integrity="sha512-b5Zp1k5zU9vlvFygpt1HklFJZ8yU/uBoZ2LSfJzsfjKSlK7F0Qg8+TA71tU6M0W1uDrdfhOvPY4zqq9DuB6Lkg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        /* Custom animation for background image */
        @keyframes bgDropDown {
            0% {
                transform: translateY(-100%);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        /* Custom animation for 860.jpg and colourbags.jpg */
        @keyframes fadeInLeft {
            0% {
                transform: translateX(-50%);
                opacity: 0;
            }
            100% {
                transform: translateX(0);
                opacity: 1;
            }
        }

        @keyframes fadeInRight {
            0% {
                transform: translateX(50%);
                opacity: 0;
            }
            100% {
                transform: translateX(0);
                opacity: 1;
            }
        }

        .background {
            animation: bgDropDown 2s ease-out;
            width: 100%;
            height: auto;
        }

        .image-box:nth-child(1) img {
            animation: fadeInLeft 1.5s ease-in-out;
        }

        .image-box:nth-child(2) img {
            animation: fadeInRight 1.5s ease-in-out;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Meena Plastics - Home</title>
    </head>
    <body>
        <!-- Hero Section -->
        <div class="hero">
            <div class="overlay"></div>
            <img src="images/bg.jpg" alt="Nature Background" class="background">
            <div class="content">
                <h1 style="font-size: 60px;">Shaping a Greener Tomorrow</h1>
                <p style="font-size: 24px;">INNOVATING WITH SUSTAINABLE PLASTIC SOLUTIONS <br> FOR A BETTER WORLD</p>
                <a href="about.aspx" class="learn-more-btn">Discover More</a>
            </div>
        </div>

        <!-- Lower Section -->
        <div class="lower-section">
            <div class="text-container">
                <h2>Our Contribution to the Environment</h2>
                <p>
                    At Meena Plastics, we prioritize sustainable innovation. From using eco-friendly materials to supporting recycling initiatives, our efforts aim to reduce environmental impact and build a greener future.
                </p>
                <p>
                    Explore our wide range of products designed to meet your needs while caring for the planet.
                </p>
            </div>
            <div class="image-container">
                <div class="image-box">
                    <img src="images/860.jpg" alt="Eco-friendly product" class="lower-img">
                </div>
                <div class="image-box">
                    <img src="images/colourbags.jpg" alt="Innovative plastic product" class="lower-img">
                </div>
            </div>
        </div>

        <!-- Services Section -->
        <section class="services-section">
            <div class="services-header">
                <h2>Our Services and Solutions</h2>
                <p>Offering cutting-edge solutions for diverse industries</p>
            </div>
            <div class="services-container">
                <div class="service-card">
                    <h3>Custom Plastic Products</h3>
                    <img src="images/custom.png" width="200px" height="200px" />
                    <p>We create custom plastic solutions tailored to your specific requirements.</p>
                </div>
                <div class="service-card">
                    <h3>Recycling Services</h3>
                    
                    <img src="images/rr.jpg" width="200px" height="200px" />
                    <p>Our advanced recycling services help reduce waste and promote sustainability.</p>
                </div>
                <div class="service-card">
                    <h3>Eco-Friendly Alternatives</h3>
                     <img src="images/eco.jpeg" width="250px" height="200px" />
                    <p>Providing biodegradable and recyclable plastic substitutes for a greener tomorrow.</p>
                </div>
            </div>
        </section>

        <!-- Plastic Substitutes & Recycling Section -->
        <section class="info-section">
            <div class="info-content">
               <h2>plastic substitutes and recycling</h2>
                <p>as part of our commitment to sustainability, meena plastics focuses on developing substitutes for traditional plastics, such as biodegradable materials, plant-based polymers, and reusable designs.</p>
                <p>we also support robust recycling initiatives to ensure plastic waste is minimized and reused efficiently. together, we can create a cleaner, greener planet.</p>
            </div>
            <div class="info-image">
                <img src="images/recycle.jpg" alt="Recycling Initiative" >
            </div>
        </section>
    </body>
</asp:Content>
