<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Montano.aspx.cs" Inherits="WebApplication1.Montano" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Montano" align="center"><br />
        <h1>Montano collection</h1>
        &nbsp;&nbsp<img src="Images/Montano Collection/1.jpeg" id="M1" height="93px" width="142px" class="image"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Montano Collection/2.jpeg" id="M2" style="height: 93px; width: 142px" class="image" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Montano Collection/3.jpeg" id="M3"style="height: 93px; width: 142px" class="image" /><br />
        &nbsp;&nbsp<img src="Images/Montano Collection/4.jpeg" id="M4" height="93px" width="142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Montano Collection/5.jpeg" id="M5" style="height: 93px; width: 142px" class="image" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt=""src="Images/Montano Collection/6.jpeg" id="M6" style="height: 93px; width: 142px" class="image"/><br />
&nbsp;
        <img alt="" src="Images/Montano Collection/7.jpeg" id="M7" style="height: 93px; width: 142px" class="image" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Montano Collection/8.jpeg" id="M8" style="height: 93px; width: 142px" class="image" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Montano Collection/9.jpeg" id="M9" style="height: 93px; width: 142px" class="image" /><br />
&nbsp;
        <img alt="" src="Images/Montano Collection/10.jpeg" id="M10" style="height: 93px; width: 142px" class="image" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Montano Collection/11.jpeg" id="M11" style="height: 93px; width: 142px" class="image" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Montano Collection/12.jpeg" id="M12" style="height: 93px; width: 142px" class="image" /><br />


        <br />
        <br />

    </div>
    <style>
        body{
          background: radial-gradient(circle,#EEFBFB, #add8e6);
          background-size:cover;
          
      }
        
        .Montano{
            margin-left: 400px;
            margin-right: 400px;
            height: auto;
            background:rgba(255,255,244,0.5);
            margin-top:100px;
            margin-bottom:100px;
             border-color:black;
            border-style:groove;
        }
        .Montano h1{
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
