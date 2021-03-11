<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login" align="center" >
        <br />
        <h1>Login</h1>
        <br />
        <br />
        <asp:Label ID="UserIncorrect" runat="server" ForeColor="#3AAFA9"></asp:Label>
        <asp:TextBox ID="TextEmail" placeholder="  Enter Email" Height="32px" Width="250px" TextMode="Email" runat="server" BackColor="#D3D3D3" style="border-radius:20px; margin-left:6px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextEmail" ErrorMessage="Please enter Email." ForeColor="#3AAFA9" style="margin-left:80px;"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid Email Id" ForeColor="#3AAFA9"></asp:RegularExpressionValidator>
        <br>
        <asp:TextBox ID="TextPass" placeholder="  Enter Password" Height="32px" Width="250px" runat="server" TextMode="Password" BackColor="#D3D3D3" style="border-radius:20px; margin-left:6px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextPass" ErrorMessage="Please enter Password." ForeColor="#3AAFA9" ></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="PassIncorrect" runat="server" ForeColor="#3AAFA9"></asp:Label>
        <br />
        <asp:HyperLink ID="ResetPassword" runat="server" NavigateUrl="~/ResetPass.aspx" style="color:#b7c6d9; text-decoration-line:none;"> Reset Password</asp:HyperLink>
        <br />
        <asp:HyperLink ID="NewUser" runat="server" NavigateUrl="~/register.aspx" style="color:#b7c6d9; text-decoration-line:none;">Create Account</asp:HyperLink>
        &nbsp;<asp:Button ID="Button1" runat="server" width="100px" Height="32px" Text="Login" OnClick="Button1_Click" BackColor="#3AAFA9" ForeColor="#12232E" style=" border-radius:20px; " />
        

    </div>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Berkshire+Swash&display=swap');
         body{
          background-image:url(Images/bb1.jpg);
          background-size:cover;
      }
        .login{
           
            background-color:rgba(18, 35, 46,0.8);
            width: 300px;
            margin-top:100px;
            height:300px;
            margin-top:100px;
            transition: transform 0.5s;
            margin-left:1000px;
            border-radius:20px;
        }

        
        .login h1{
            color:#adb9c9;
            font-family:'Berkshire Swash';
            font-size:40px;
            
        }
        .login:hover{
            transform:translateX(-5px);
        }
        .login ResetPassword{
            text-align:left;
        }
    </style>
</asp:Content>
