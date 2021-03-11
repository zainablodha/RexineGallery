<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rexines.aspx.cs" Inherits="WebApplication1.Rexines" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="rexine" align="center" >
        <br />
        <asp:ImageButton ID="ImageMontano" runat="server" Height="200px" ImageUrl="~/Images/Montano.jpg" Class="btn" Width="250px"  OnClick="ImageButton1_Click" Style="border-radius:30px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageAvio" runat="server" Height="200px" Width="250px" ImageUrl="~/Images/aavio.jpg" Class="btn" Style="border-radius:30px;" OnClick="ImageAvio_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageVenus" runat="server" Height="200px" Width="250px" ImageUrl="~/Images/venus.jpg" Class="btn" Style="border-radius:30px;" OnClick="ImageVenus_Click" />
         <br />
        <asp:Label ID="LabelMontano" runat="server" Text="Montano Collection" Font-Names="Black Jack" Font-Size="X-Large" Font-Bold="True"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LabelAvio" runat="server" Text="Avio Collection" Font-Names="Black Jack" Font-Size="X-Large" Font-Bold="True"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LabelVenus" runat="server" Text="Venus Collection" Font-Names="Black Jack" Font-Size="X-Large" Font-Bold="True"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:ImageButton ID="ImageVolcano" runat="server" Height="200px" Width="250px" ImageUrl="~/Images/volcano.jpg" Class="btn" Style="border-radius:30px;" OnClick="ImageVolcano_Click" />&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageLeather" runat="server" Height="200px" Width="250px" ImageUrl="~/Images/leather.jpg" Class="btn" Style="border-radius:30px;" OnClick="ImageLeather_Click" />

        <br />
        <asp:Label ID="Label3" runat="server" Text="Volcano Collection" Font-Names="Black Jack" Font-Size="X-Large" Font-Bold="True"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Artificial Leather" Font-Names="Black Jack" Font-Size="X-Large" Font-Bold="True"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />

    </div>
  
    <style>
        body{
          background: radial-gradient(circle,#EEFBFB, #add8e6);
          background-size:cover;
          
      }
        .btn{
            transition: transform 0.5s;
        }
        .btn:hover{
            transform:translateY(-5px);
        }
        
         .rexine {
            margin-left: 300px;
            margin-right: 300px;
            margin-top:100px;
            margin-bottom:100px;
            border-color:black;
            border-style:groove;
           
        }
        
         
    </style>
</asp:Content>
