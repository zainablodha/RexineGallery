<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Avio.aspx.cs" Inherits="WebApplication1.Avio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Avio" align="center"><br />
        <h1>Avio Collection</h1>
         
        &nbsp;&nbsp<img src="Images/Avio Collection/1.jpeg" id="A1" height="93px" width="142px" class="image" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Avio Collection/2.jpeg" id="A2" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Avio Collection/3.jpeg" id="A3"style="height: 93px; width: 142px" class="image"/><br />
        &nbsp;&nbsp<img src="Images/Avio Collection/4.jpeg" id="A4" height="93px" width="142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Avio Collection/5.jpeg" id="A5" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt=""src="Images/Avio Collection/6.jpeg" id="A6" style="height: 93px; width: 142px" class="image"/><br />
&nbsp;
        <img alt="" src="Images/Avio Collection/7.jpeg" id="A7" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Avio Collection/8.jpeg" id="A8" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Avio Collection/9.jpeg" id="A9" style="height: 93px; width: 142px" class="image"/><br />
&nbsp;
        <img alt="" src="Images/Avio Collection/10.jpeg" id="A10" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Avio Collection/11.jpeg" id="A11" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Avio Collection/12.jpeg" id="A12" style="height: 93px; width: 142px" class="image"/><br />
&nbsp;
        <img alt="" src="Images/Avio Collection/13.jpeg" id="A13" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Avio Collection/14.jpeg" id="A14" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Avio Collection/15.jpeg" id="A15" style="height: 93px; width: 142px" class="image"/><br />


        <br />
        <br />
    </div>
     <style>
         body{
          background: radial-gradient(circle,#EEFBFB, #add8e6);
          background-size:cover;
          
      }
        .Avio{
            margin-left: 400px;
            margin-right: 400px;
            background:rgba(255,255,244,0.5);
            height: auto;
            margin-top:100px;
            margin-bottom:100px;
            border-color:black;
            border-style:groove;
        }
        .Avio h1{
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
