<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cod.aspx.cs" Inherits="WebApplication1.Cod" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="order" align="center">
        <div class="tot"><br />
        
            <h3> <asp:Label id="tot" runat="server" ></asp:Label></h3>
        <h5>Pay Securely with a Credit Card or COD </h5>
            
            <br />
            <br />
            <div class="codd">
                
            <div class="imgg">
            <asp:ImageButton class="img" runat="server" Height="107px" ImageUrl="~/Credit Card.png" Width="139px" OnClick="Ccard_Click"></asp:ImageButton>&nbsp;
            <asp:ImageButton  class="img" runat="server" Width="139px" Height="107px" ImageUrl="~/CODD.png"/></div>
            <br />
                <h7>COD Details</h7><br />
            <asp:Label id="drl" runat="server" Text="Your Order will be delivered at:"></asp:Label><br />
            <asp:Label id="addr" runat="server" Text="Label"></asp:Label><br />
            <asp:Label id="estdlr" runat="server" Text="This product will be estimately delivered within 3 working days of confirmation."></asp:Label>
            <br />
            </div><br />
            <asp:Button ID="Cancel" runat="server" Text="Cancel" BackColor="#3DED97" ForeColor="White" Font-Size="Large" Height="30px" Width="68px" OnClick="Cancel_Click"/>
            <asp:Button class="Payy" ID="conf" runat="server" Text="CONFIRM" BackColor="#3DED97" ForeColor="White" Height="30px" Width="68px" OnClick="Pay_Click" />
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
        .codd h7{
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size:15px; 
        }
        </style>
</asp:Content>
