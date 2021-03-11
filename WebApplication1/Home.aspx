
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
    @import url('https://fonts.googleapis.com/css?family=Arvo:400,400i,700,700i');
    
    .row{
        
        display:flex;
        align-items:center;
        flex-wrap:wrap;
        justify-content: space-around;
    }
    .col2{
        flex-basis: 50%;
        min-width: 300px;
        background:rgba(96, 125, 139,0.5);
        height:500px;
        width:500px;
        margin-top:50px;
        

    }
    .container{
    
    margin: auto;
    padding-left: 100px;
    padding-right: 100px;
    
    
}
    .col2 img{
        
        padding : 0 50px;
        margin-top: 80px;
        width:700px;
        height:500px;
    }
    .col2 h1{
        font-size: 50px;
        line-height: 60px;
        margin-left:100px;
        font-family: 'Arvo', serif;
        padding : 50px 0;
        margin-top:200px;
        color:#12232E;
    }
    .btn{
        display: inline-block;
        background:#12232E;
        color:white;
        padding:8px 30px;
        margin: 30px 0;
        margin-left:120px;
        border-radius: 30px;
        transition: background 0.5s;
        text-align:center;
        margin-top:5px;
        text-decoration-line:none;
        
    }
    .btn:hover{
        background: #3AAFA9;
    }
    
    
</style>
    <body style="background:radial-gradient(circle,#EEFBFB, #add8e6);">
    <div class="container">
     <div class="row">
         <div class="col2">
        <h1> " The art <br /> you can afford "</h1>
             <a href="Rexines.aspx" class="btn"> Explore Now &#8594;</a>

    </div>
          <div class="col2">
              <img src="Images/bg3.jpg" border="5" />
          </div>
    

     </div> 
        </div>
    
    </body>
  
   
  

   
</asp:Content>
