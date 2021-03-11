<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.Admin.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="login" align="center">
        <br />
        <h1>Login</h1>
        <br />
        <asp:Label ID="UserIncorrect" runat="server" ForeColor="#3AAFA9"></asp:Label>
        <asp:TextBox ID="TextUser" placeholder="  Enter UserName" Height="32px" Width="250px" runat="server" BackColor="#D3D3D3" style="border-radius: 20px; margin-left: 6px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextUser" ErrorMessage="Please enter UserName." ForeColor="#3AAFA9" style="margin-left: 80px;"></asp:RequiredFieldValidator>
        <br>
        <asp:TextBox ID="TextPass" placeholder="  Enter Password" Height="32px" Width="250px" runat="server" TextMode="Password" BackColor="#D3D3D3" style="border-radius: 20px; margin-left: 6px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextPass" ErrorMessage="Please enter Password." ForeColor="#3AAFA9"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="PassIncorrect" runat="server" ForeColor="#3AAFA9"></asp:Label>
        <br />
       
        &nbsp;<asp:Button ID="Button1" runat="server" width="100px" Height="32px" Text="Login" OnClick="Button1_Click" BackColor="#3AAFA9" ForeColor="#12232E" style="border-radius: 20px;" />
    </div>
        </form>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Berkshire+Swash&display=swap');
        body {
            background-color:aliceblue;
            
        }

        .login {
            background-color: rgba(18, 35, 46,0.8);
            width: 300px;
            margin-top: 200px;
            height: 300px;
            margin-right: 500px;
            transition: transform 0.5s;
            margin-left: 500px;
            border-radius: 20px;
        }


            .login h1 {
                color: #adb9c9;
                font-family: 'Berkshire Swash';
                font-size: 40px;
            }

            .login:hover {
                transform: translateX(-5px);
            }

            
    </style>

</asp:Content>
