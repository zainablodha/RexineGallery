<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Successful.aspx.cs" Inherits="WebApplication1.Successful" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="success" >
       <h6> <asp:Label id="successs" runat="server" Text="Your Order has been Placed Successfully!" ></asp:Label></h6>
        <h3><asp:Label id="Oid" runat="server" ></asp:Label></h3>
    </div>
    <style>
        .success{
            margin-top:200px;
            height:300px;
            width: 500px;
            margin-left:300px;
        }
    </style>
</asp:Content>
