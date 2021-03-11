﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BeanBag16.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="row">
                <div class="col2">
                    <img class="bb1" src="Images/BeanBags/beanbag2 6.jpg" />
                </div>
                 <div class="col2">
                     <h1><asp:Label id="Bbname" runat="server"></asp:Label></h1>
                     <div class="price">
                         <asp:Label ID="Bbprice" runat="server">2300</asp:Label>
                     </div>
                     <div >
                         <asp:DetailsView class="details" ID="DetailsView1" runat="server" Height="50px" Width="242px" AutoGenerateRows="False" DataSourceID="SqlDataSource1" GridLines="None">
                             <Fields>
                                 <asp:BoundField DataField="BbType" HeaderText="BeanBag Type" SortExpression="BbType" />
                                 <asp:BoundField DataField="BbRex" HeaderText="BeanBag Rexine" SortExpression="BbRex" />
                             </Fields>
                         </asp:DetailsView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT  [BbType], [BbRex] FROM [BeanBag]"></asp:SqlDataSource>
                     </div>
                     <div class="beans">
                         <asp:RadioButton ID="WithBeans"  runat="server" Text=" With Beans" GroupName="Beans" /><br />
                         <asp:RadioButton ID="WithoutBeans" runat="server" Text=" Without Beans" GroupName="Beans" />
                         <br />
                         <asp:DropDownList ID="SIZE" runat="server">
                             <asp:ListItem>L</asp:ListItem>
                             <asp:ListItem>XL</asp:ListItem>
                             <asp:ListItem>XXL</asp:ListItem>

                         </asp:DropDownList>
                     &nbsp;</div>
                     <div class="options">
                         <h6>OPTIONS</h6><br />
                         <asp:ImageButton ID="ImageButton5" class="imgbtn" runat="server" ImageUrl="~/Images/BeanBags/beanbag2.jpg" OnClick="ImageButton5_Click" />&nbsp;
                         <asp:ImageButton ID="ImageButton1" class="imgbtn" runat="server" ImageUrl="~/Images/BeanBags/beanbag2 6.jpg"  />&nbsp;
                         <asp:ImageButton ID="ImageButton2" class="imgbtn" runat="server" ImageUrl="~/Images/BeanBags/beanbag2 7.jpg"/>&nbsp;
                         <asp:ImageButton ID="ImageButton3" class="imgbtn" runat="server" ImageUrl="~/Images/BeanBags/beanbag2 8.jpg"/>&nbsp;
                         <asp:ImageButton ID="ImageButton4" class="imgbtn" runat="server" ImageUrl="~/Images/BeanBags/beanbag2 9.jpg"/>
                     </div>
                     <div class="quantity">
                        <h6>QUANTITY</h6> 
                         <asp:TextBox ID="q" class="" runat="server" TextMode="Number" MaxLength="2"></asp:TextBox>
                     </div><br />
                     <asp:Button ID="Button1" class="order" runat="server" ForeColor="white" Text="ORDER" />
                 </div>
            </div>

        </div>
    </body>
    <style>
    .body{
          background: radial-gradient(circle,#EEFBFB, #add8e6);
          background-size:cover;
        }
    .row{
        
        display:flex;
        align-items:center;
        flex-wrap:wrap;
        justify-content: space-around;
    }
    .col2{
        flex-basis: 50%;
        min-width: 300px;
        #background:rgba(255,255,255,0.5);
        height:600px;
        width:600px;
        border:3px solid black;
        margin-top:50px;
        

    }
    .container {
            margin: auto;
            padding-left: 25px;
            padding-right: 25px;
        }
    .col2 h1{
        font-size: 40px;
        line-height: 60px;
        margin-left:200px;
        #margin-right:auto;
        font-family: 'Arvo', serif;
        padding : 30px 0;
        #margin-top:10px;
        color:#12232E;
    }
    .col2 img{
        #background-color:aqua;
        padding : 0 50px;
        margin-top: 80px;
        margin-left:50px;
        width:400px;
        height:400px;
         border:3px solid black;

    }
        .col2 h1:after {
            content: "";
            display: block;
            width: 170px;
            height: 5px;
            background: black;
            position: absolute;
            margin-left: 20px;
            border-radius: 5px;
        }
        .price{
            margin-left:50px;
            font-size: 30px;
            font-family: 'Arvo', serif;
             color:#12232E;
        }
        .details{
            height:80px;
            width:550px;
            border:2px solid black;
            margin-left:auto;
            margin-right:auto;
            border-left:0px;
            border-right:0px;
        }
        #DetailsView1{
            border:none;
        }
        .details h3{
            font-size:30px;
             font-family: 'Arvo', serif;
             color:#12232E;
            margin-left:10px;
            margin-top:20px
        }
        .beans {
            height: 80px;
            width: 550px;
            border-bottom: 2px solid black;
            margin-left: 35px;
            font-size:15px;
            font-family: 'Arvo', serif;
            color:#12232E;
        }
        .options{
            
            margin-left:40px;
            margin-top:10px;
        }
        .options h6{
            font-size:15px;
            font-family: 'Arvo', serif;
            color:#12232E;
        }
        .imgbtn{
            height:40px;
            width:40px;
            border-color:red;  
        }
        .order{
             height: 40px;
            width: 550px;
            border-bottom: 2px solid black;
            margin-left: 35px;
             font-size:20px;
             
             text-align:center;
             background:#3AAFA9;

        }
        .quantity{
            margin-left:40px;
            margin-top:10px;
        }
        .quantity h6{
            font-size:15px;
            font-family: 'Arvo', serif;
            color:#12232E;

        }
        .q1{
            height:30px;
            width:230px;
        }
            
    </style>
</asp:Content>