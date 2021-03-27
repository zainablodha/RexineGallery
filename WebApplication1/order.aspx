<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="WebApplication1.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="order" align="center">
        <div class="tot"><br />
        
            <h3> <asp:Label id="tot" runat="server" ></asp:Label></h3>
        <h5>Pay Securely with a Credit Card or COD</h5>
            <br />
            <br />
            <div class="imgg">
            <asp:ImageButton id="Ccard" class="img" runat="server" Height="107px" ImageUrl="~/Credit Card.png" Width="139px" OnClick="Ccard_Click"></asp:ImageButton>&nbsp;
            <asp:ImageButton id="Cd" class="img" runat="server" Width="139px" Height="107px" ImageUrl="~/CODD.png" OnClick="Cd_Click"/></div>
            <br />
            <div class="card">
            <h7>Credit Card Details</h7><br />
            <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="265px" placeholder=" Name on the Card"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Height="29px" Width="265px" placeholder=" Card Number"></asp:TextBox>
            <br />
            <br />
            <div class="cvv">
            <asp:TextBox ID="TextBox4" runat="server" Height="29px" Width="76px" placeholder=" MM/YY"></asp:TextBox>&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Height="29px" Width="76px" placeholder=" CVC"></asp:TextBox>&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" Height="29px" Width="76px" placeholder=" Zip Code"></asp:TextBox></div>
            <br /></div>
            <asp:Button class="Payy" ID="Button1" runat="server" Text=" PAY" BackColor="#3DED97" ForeColor="White" Font-Size="Large" Height="30px" Width="68px" />
            <br />
            <br />

            <br />
            <br />
        </div>
    <style>
       
        body{
            background: radial-gradient(circle, #EEFBFB, #add8e6);
            background-size: cover;
        }
        .order{
           margin-left:500px;
           margin-top:100px;
            border:2px solid black;
            height:500px;
            width:400px;
            background-color:aliceblue;
        }
        .tot{
            align-content:center;
        }
        .tot h3{
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size:30px;    
        }
        .tot h5{
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size:20px;  
        }
        .img{
            border:2px solid black;
        }
        .card h7{
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size:15px; 
        }

    </style>
</asp:Content>
