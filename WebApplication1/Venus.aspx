<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Venus.aspx.cs" Inherits="WebApplication1.Venus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Venus" align="center"><br />
        <h1>Venus Collection</h1>
          &nbsp;&nbsp<img src="Images/Venus Collection/1.jpeg" id="V1" height="93px" width="142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Venus Collection/2.jpeg" id="V2" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Venus Collection/3.jpeg" id="V3"style="height: 93px; width: 142px" class="image"/><br />
        &nbsp;&nbsp<img src="Images/Venus Collection/4.jpeg" id="V4" height="93px" width="142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Venus Collection/5.jpeg" id="V5" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt=""src="Images/Venus Collection/6.jpeg" id="V6" style="height: 93px; width: 142px" class="image"/><br />
&nbsp;
        <img alt="" src="Images/Venus Collection/7.jpeg" id="V7" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Venus Collection/8.jpeg" id="V8" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Venus Collection/9.jpeg" id="V9" style="height: 93px; width: 142px" class="image"/><br />
&nbsp;
        <img alt="" src="Images/Venus Collection/10.jpeg" id="V10" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Venus Collection/11.jpeg" id="V11" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Venus Collection/12.jpeg" id="V12" style="height: 93px; width: 142px" class="image"/><br />
    </div>
     <style>
         body{
          background: radial-gradient(circle,#EEFBFB, #add8e6);
          background-size:cover;
          
      }
        .Venus{
            margin-left: 400px;
            margin-right: 400px;
            background-color:rgba(255,255,244,0.7);
            height: 520px;
            border-color:black;
            border-style:groove;
            margin-top:100px;
            margin-bottom:100px;
        }
        .Venus h1{
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
