<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Leather.aspx.cs" Inherits="WebApplication1.Leather" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Leather" align="center"><br/>
        <h1>Artificial Leather</h1>
         &nbsp;&nbsp<img src="Images/Artificial Leather/1.jpeg" id="L1" height="93px" width="142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Artificial Leather/2.jpeg" id="L2" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Artificial Leather/3.jpeg" id="L3"style="height: 93px; width: 142px" class="image"/><br />
        &nbsp;&nbsp<img src="Images/Artificial Leather/4.jpeg" id="L4" height="93px" width="142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Artificial Leather/5.jpeg" id="L5" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt=""src="Images/Artificial Leather/6.jpeg" id="L6" style="height: 93px; width: 142px" class="image"/><br />
&nbsp;
        <img alt="" src="Images/Artificial Leather/7.jpeg" id="L7" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Artificial Leather/8.jpeg" id="L8" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Artificial Leather/9.jpeg" id="L9" style="height: 93px; width: 142px" class="image"/><br />
&nbsp;
        <img alt="" src="Images/Artificial Leather/10.jpeg" id="L10" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Artificial Leather/11.jpeg" id="L11" style="height: 93px; width: 142px" class="image"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" src="Images/Artificial Leather/12.jpeg" id="L12" style="height: 93px; width: 142px" class="image"/><br />
    </div>
      <style>
           body{
          background: radial-gradient(circle,#EEFBFB, #add8e6);
          background-size:cover;
          
      }
        .Leather{
            margin-left: 400px;
            margin-right: 400px;
            background-color:rgba(255, 255, 244,0.7);
            height: 520px;
            border-color:black;
            border-style:groove;
            margin-top:100px;
            margin-bottom:100px;
            
        }
        .Leather h1{
            font-family:'Black Jack';
            font-size:50px;
        }
        .image:hover {
            -webkit-transform:scale(3.0); transform:scale(3.0);
             box-shadow: 0 25px 60px rgba(0,0,0,.5);
        }
          .image {
              -webkit-transition: all 0.7s ease;
              transition: all 0.7s ease;
              border: groove;
              border-color: black;
              border-width: thin;
          }
        .image:hover ~ .Leather{
            -webkit-filter: blur(5px);
      filter: blur(5px);
}
        </style>
</asp:Content>
