<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Successful.aspx.cs" Inherits="WebApplication1.Successful" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="success" align="center"><br />
       <h6> <asp:Label id="successs" runat="server" Text="Your Order has been Placed Successfully!" ></asp:Label></h6>
        <h3><asp:Label id="Oid" runat="server" ></asp:Label></h3>
    </div>
    <style>
        body{
            background: radial-gradient(circle, #EEFBFB, #add8e6);
            background-size: cover;
        }
        .success{
            margin-top:200px;
            height:300px;
            width: 500px;
            margin-left:500px;
            background-color:aliceblue;
        }
        .success h3 {
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: 30px;
        }
        .success h6{
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: 20px;
        }
    </style>
</asp:Content>
