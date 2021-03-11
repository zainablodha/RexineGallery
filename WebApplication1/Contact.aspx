<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="contact" align="center"><br />
         <h1 class="contct">Contact Us</h1><br />
       <p>Email: <a style="text-decoration:none;" href="mailto:abc@gmail.com">"abc@gmail.com"</a><br />
           Call: <a href="tel:+91987-654-3210">"+91987-654-3210"</a>
       </p>

    </div>
    <style>
        
        body {
          background-image:url(Images/bb2.jpg);
          background-size:cover;
        }
        .contct{
            font-family:'Black Jack';
            font-size:50px;
            color:white;
            line-height:60px;
            text-decoration-line:underline;
        }
       
        .contact p{
            color:white;
            font-size:40px;
        }
        .contact p a{
            text-decoration-line:none;
            color:#3AAFA9;
        }
          
         .contact{
           
           height:250px;
           width: 700px;
           background-color:rgba(18,35,46,0.9);
           margin-top:100px;
           margin-left:200px;
          border-radius:20px;
           
         
        }

        
        
         
    </style>
</asp:Content>
