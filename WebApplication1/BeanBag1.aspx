<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BeanBag1.aspx.cs" Inherits="WebApplication1.BeanBag1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="row">
            <div class="col2">
                <img class="bb1" src="../Images/BeanBags/beanbag2.jpg" />
            </div>
            <div class="col2">
                <h1>

                    <asp:Label ID="Bbnamee" runat="server"></asp:Label>
                </h1>
                <div class="price">
                    <asp:Label ID="Bbpricee" runat="server">2300</asp:Label>
                </div>
                <div class="details">
                    <h7>DETAILS</h7><br />
                     BeanBag Type: <asp:Label ID="Bbtypee" runat="server"></asp:Label><br />
                
                    BeanBag Rexine: <asp:Label ID="Bbrexx" runat="server"></asp:Label>
                </div>
                <!-- <div>
                        <asp:DetailsView class="details" ID="DetailsView1" runat="server" Height="50px" Width="242px" AutoGenerateRows="False" DataSourceID="SqlDataSource1" GridLines="None">
                            <Fields>
                                 <asp:BoundField DataField="BbName" HeaderText="BbName" SortExpression="BbName" />
                                 <asp:BoundField DataField="BbType" HeaderText="BbType" SortExpression="BbType" />
                                <asp:BoundField DataField="BbRex" HeaderText="BbRex" SortExpression="BbRex" />
                                <asp:BoundField DataField="BbPrice" HeaderText="BbPrice" SortExpression="BbPrice" />
                            </Fields>
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT [BbName], [BbType], [BbRex], [BbPrice] FROM [BeanBag]"></asp:SqlDataSource>
                    </div> -->
                <div class="beans">
                    BEANS:<br />
                    <asp:RadioButtonList ID="BEANS" runat="server" RepeatLayout="Flow" onchange="createRequest" AutoPostBack="True">
                        <asp:ListItem Value="With Beans" Text="With Beans" Checked="True"></asp:ListItem>
                        <asp:ListItem Value="Without Beans" Text="Without Beans"></asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    SIZE:
                    <asp:DropDownList ID="SIZE" runat="server" onselectedindexchanged="createRequest" AutoPostBack="True">
                        <asp:ListItem>L</asp:ListItem>
                        <asp:ListItem>XL</asp:ListItem>
                        <asp:ListItem>XXL</asp:ListItem>

                    </asp:DropDownList>
                    &nbsp;
                </div>
                <div class="options">
                    <h6>OPTIONS</h6>
                    <br />
                    <asp:ImageButton ID="ImageButton5" class="imgbtn" runat="server"
                        ImageUrl="~/Images/BeanBags/beanbag2.jpg" />
                    &nbsp;
                            <asp:ImageButton ID="ImageButton1" class="imgbtn" runat="server"
                                ImageUrl="~/Images/BeanBags/beanbag2 6.jpg" OnClick="ImageButton1_Click" />
                    &nbsp;
                            <asp:ImageButton ID="ImageButton2" class="imgbtn" runat="server"
                                ImageUrl="~/Images/BeanBags/beanbag2 7.jpg" OnClick="ImageButton2_Click" />
                    &nbsp;
                            <asp:ImageButton ID="ImageButton3" class="imgbtn" runat="server"
                                ImageUrl="~/Images/BeanBags/beanbag2 8.jpg" OnClick="ImageButton3_Click" />
                    &nbsp;
                            <asp:ImageButton ID="ImageButton4" class="imgbtn" runat="server"
                                ImageUrl="~/Images/BeanBags/beanbag2 9.jpg" OnClick="ImageButton4_Click" />
                </div>
                <div class="quantity">
                    <h6>QUANTITY</h6>
                    <asp:TextBox ID="q" class="" runat="server" AutoPostBack="True" OnTextChanged="createRequest" TextMode="number" min="1" max="10" placeholder="1"></asp:TextBox>

                </div>
                <br />
                <asp:Button ID="Button1" class="order" runat="server" ForeColor="white" Text="ORDER" OnClick="Button1_Click" />
            </div>
        </div>

    </div>

    <style>
        body{
            background: radial-gradient(circle, #EEFBFB, #add8e6);
            background-size: cover;
        }
        .row {
            display: flex;
            align-items: center;
            flex-wrap: wrap;
            justify-content: space-around;
        }

        .col2 {
            flex-basis: 50%;
            min-width: 300px;
            background: rgba(255, 255, 255, 0.5);
            height: 600px;
            width: 600px;
            border: 3px solid black;
            margin-top: 50px;
        }

        .container {
            background: radial-gradient(circle, #EEFBFB, #add8e6);
            background-size: cover;
            margin: auto;
            padding-left: 150px;
            padding-right: 150px;
        }

        .col2 h1 {
            font-size: 40px;
            line-height: 60px;
            margin-left: 200px;
            #margin-right: auto;
            font-family: 'Arvo', serif;
            padding: 30px 0;
            #margin-top: 10px;
            color: #12232E;
        }

        .col2 img {
            #background-color: aqua;
            #padding: 0 50px;
            margin-top: 70px;
            margin-left: 80px;
            width: 450px;
            height: 450px;
            border: 3px solid black;
        }

        .col2 h1:after {
            content: "";
            display: block;
            width: 200px;
            height: 5px;
            background: black;
            position: absolute;
            margin-left: 20px;
            border-radius: 5px;
        }

        .price {
            margin-left: 50px;
            font-size: 30px;
            font-family: 'Arvo', serif;
            color: #12232E;
        }

        .details {
            height: 80px;
            width: 550px;
            border: 2px solid black;
            margin-left: auto;
            margin-right: auto;
            border-left: 0px;
            border-right: 0px;
            font-size: 15px;
            font-family: 'Arvo', serif;
        }

        #DetailsView1 {
            border: none;
        }

        .details h7 {
            font-size: 20px;
            font-family: 'Arvo', serif;
            color: #12232E;
            #margin-left: 10px;
            margin-top: 15px
        }

        .beans {
            height: 80px;
            width: 550px;
            border-bottom: 2px solid black;
            margin-left: 35px;
            font-size: 15px;
            font-family: 'Arvo', serif;
            color: #12232E;
            margin-top:10px;
        }

        .options {
            margin-left: 40px;
            margin-top: 10px;
        }

            .options h6 {
                font-size: 15px;
                font-family: 'Arvo', serif;
                color: #12232E;
            }

        .imgbtn {
            height: 40px;
            width: 40px;
            border-color: red;
        }

        .order {
            height: 40px;
            width: 550px;
            border-bottom: 2px solid black;
            margin-left: 35px;
            font-size: 20px;
            text-align: center;
            background: #3AAFA9;
        }

        .quantity {
            margin-left: 40px;
            margin-top: 10px;
        }

            .quantity h6 {
                font-size: 15px;
                font-family: 'Arvo', serif;
                color: #12232E;
            }

        .q1 {
            height: 30px;
            width: 230px;
        }
    </style>
</asp:Content>
