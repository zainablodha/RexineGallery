<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BeanBagH.aspx.cs" Inherits="WebApplication1.BeanBagH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>  
            <div class="col">
                <div class="img">
                <img class="img1" src="Images/BeanBags/beanbag2.jpg" />&nbsp;&nbsp;
                <img class="img2" src="Images/BeanBags/beanbag5.jpg" />&nbsp;&nbsp;
                <img class="img3" src="Images/BeanBags/beanbag6.jpg" />&nbsp;&nbsp;
                    <img class="img4" src="Images/BeanBags/beanbag8%2010.jpg" /> <br />
                </div>
                <asp:Button ID="Button1" Class="btn1" runat="server" Text="View" ForeColor="White" OnClick="Button1_Click"/>&nbsp;&nbsp;
                <asp:Button ID="Button2" Class="btn1" runat="server" Text="View" ForeColor="White" OnClick="Button2_Click" />&nbsp;&nbsp;
                <asp:Button ID="Button3" Class="btn1" runat="server" Text="View" ForeColor="White"/>&nbsp;&nbsp;
                <asp:Button ID="Button4" Class="btn1" runat="server" Text="View" ForeColor="White"/><br />
        


  </div>
        </body>
    <style> 
     img{
         margin-left:58px;
         margin-top:50px;
         
     }
     .img1 {
        height:250px;
        width:250px;
     }
     .img2{
         height:250px;
        width:250px;
     }
     .img3{
         height:250px;
        width:250px;
     }
     .img4{
         height:250px;
        width:250px;
        
     }
     .col{
        margin-left: 100px;
            margin-right: 100px;
            margin-top:150px;
            margin-bottom:100px;
            border-color:black;
            border-style:groove;
     }
        .btn1 {
            margin-left: 58px;
            background-color:#12232E;
            width: 250px;
            height: 30px;
            margin-bottom: 50px;
            
        }
    </style>
</asp:Content>
