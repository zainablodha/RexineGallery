<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Volcano.aspx.cs" Inherits="WebApplication1.Volcano" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Volcano" align="center"><br />
        <h1>Volcano Collection</h1>
         &nbsp;&nbsp<img src="Images/Volcano Collection/1.jpeg" id="Vo1" height="93px" width="142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Volcano Collection/2.jpeg" id="Vo2" style="height: 93px; width: 142px" class="image" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Volcano Collection/3.jpeg" id="Vo3"style="height: 93px; width: 142px" class="image" /><br /> <br />
        &nbsp;&nbsp<img src="Images/Volcano Collection/4.jpeg" id="Vo4" height="93px" width="142px" class="image" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Volcano Collection/5.jpeg" id="Vo5" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt=""src="Images/Volcano Collection/6.jpeg" id="Vo6" style="height: 93px; width: 142px" class="image"/><br /><br />
&nbsp;
        <img alt="" src="Images/Volcano Collection/7.jpeg" id="Vo7" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Volcano Collection/8.jpeg" id="Vo8" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Volcano Collection/9.jpeg" id="Vo9" style="height: 93px; width: 142px" class="image"/><br /><br />
    </div>
     <style>
         body{
          background: radial-gradient(circle,#EEFBFB, #add8e6);
          background-size:cover;
          
      }
        .Volcano{
            margin-left: 400px;
            margin-right: 400px;
            background-color:rgba(255,255,244,0.7);
            height: auto;
            margin-top:100px;
            margin-bottom:100px;
            border-color:black;
            border-style:groove;
        }
        .Volcano h1{
            font-family:'Black Jack';
            font-size:50px;
        }
        .image:hover {
            -webkit-transform:scale(3.0); transform:scale(3.0);
            box-shadow: 0 25px 60px rgba(0,0,0,.5);
        }
        .image {
            -webkit-transition: all 0.7s ease; transition: all 0.7s ease;
            border:groove;
            border-color:black;
            border-width:thin;
        }
        </style>
</asp:Content>
