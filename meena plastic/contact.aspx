<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="meena_plastic.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Meena Plastics - Contact Us</title>
  
</head>
<body>

  <div class="contact-container">
    <!-- Contact Form Section -->
    <div class="form-container">
      <h2>Contact Us</h2>
      <form id="contactForm">
        
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter your name" required>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>
        
        <label for="subject">Subject:</label>
        <input type="text" id="subject" name="subject" placeholder="Enter the subject" required>
        
        <label for="message">Message:</label>
        <textarea  type="text"id="message" name="message" rows="4" placeholder="Enter your message" required></textarea>
        
        <button type="submit">Submit</button>
          <p style="color:#598527;"><i class="icon-ok" style="margin:5px;"></i><span id="info">Thanks for your Message. Your message sent successfully.</span>
         
         </p>
          <input type="hidden" name="formSubmitted" id="formSubmitted" value="true">
          
      </form>


    </div>

    <!-- Google Map Section -->
    <div class="map-container">
      <h2>Find Us on the Map</h2>
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10172.817521118166!2d73.18163057808508!3d22.247635018528936!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395fc42c4284fc63%3A0xce07c1e62e46682d!2sMeena%20Plastics!5e1!3m2!1sen!2sin!4v1734949247283!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
  </div>


  <script>
      // Handle form submission and display success message
      document.getElementById("contactForm").addEventListener("submit", function (event) {
          event.preventDefault();  // Prevent the form from actually submitting (reloading the page)

          // Display the success message next to the submit button (if desired)
          document.getElementById("successMessage").style.display = "inline";

          // Clear the form fields
          document.getElementById("contactForm").reset();
      });
  </script>
     <section class="service-section">
   <div class="services-header">
     <h2>Contact on:</h2>
     <p>Join With US</p>
   </div>
   <div class="services-container">
     <div class="service-card">
         <img src="images/icons8-letter-50.png" />
       <h3>Email:</h3>
       <p>Meenaplastics882@gmail.com
Yashkukreja1309@gmail.com.</p>
     </div>
     <div class="service-card">
         <img src="images/icons8-address-50.png" />
       <h3>Address:</h3>
       <p>Meena plastics, 882/5 Makarpura GIDC Industrial estate, Vadodara-390010</p>
     </div>
     <div class="service-card">
         <img src="images/icons8-phone-book-80.png" />
        <h2>Phone-Number:</h2>
  <p>+91 94083 42280</p>
     </div>
   </div>
 </section>

</body>




</asp:Content>



