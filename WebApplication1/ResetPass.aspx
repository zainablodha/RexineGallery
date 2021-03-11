<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResetPass.aspx.cs" Inherits="WebApplication1.ResetPass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Reset" align="center">

       <br />
       <h1>Reset Password</h1>

        <asp:Label ID="ResPass" runat="server"  ForeColor="#3AAFA9"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextEmail" placeholder="  Enter Email" runat="server" Height="32px" Width="250px" TextMode="Email" BackColor="#D3D3D3" style="border-radius:20px;"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextEmail" ErrorMessage="Email is required." ForeColor="#3AAFA9"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid Email Id" ForeColor="#3AAFA9"></asp:RegularExpressionValidator>
        <br />
        <asp:TextBox ID="TextPno" placeholder="  Enter Mobile No" runat="server" TextMode="Phone" Height="32px" Width="250px" BackColor="#D3D3D3" style="border-radius:20px;"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextPno" ErrorMessage="Mobile No is required." ForeColor="#3AAFA9"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="TextPass" placeholder="  New Password" runat="server" Height="32px" Width="250px" TextMode="Password" BackColor="#D3D3D3" style="border-radius:20px;"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextPass" ErrorMessage="Password is required." ForeColor="#3AAFA9"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="TextPass1" placeholder="  Confirm New Password" runat="server" Height="32px" Width="250px" TextMode="Password" BackColor="#D3D3D3" style="border-radius:20px;"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextPass" ErrorMessage="Password is required." ForeColor="#3AAFA9"></asp:RequiredFieldValidator><br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextPass" ControlToValidate="TextPass1" ErrorMessage="Both passwords must be same." ForeColor="#3AAFA9"></asp:CompareValidator>
        <br />
        <br />
        <asp:HyperLink ID="Login" runat="server" NavigateUrl="~/Login.aspx"  style="color:#b7c6d9; text-decoration-line:none;"> LOGIN</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="Button1" runat="server" width="100px" Height="32px" Text="Change" OnClick="Button1_Click"  BackColor="#3AAFA9" ForeColor="#12232E" style=" border-radius:20px; " />


    </div>
    <style>
         body{
          background-image:url(Images/bb1.jpg);
          background-size:cover;
      }
        .Reset {
            background-color:rgba(18, 35, 46,0.8);
            width: 350px;
            margin-top: 100px;
            height: 450px;
            transition: transform 0.5s;
            margin-left:1000px;
            align-content:center;
            border-radius:20px;
        }
        .Reset h1{
            color:#adb9c9;
            font-family:'Berkshire Swash';
            #font-size:40px;
        }
        .Reset Login{
            font-size:large;
        }
        .Reset:hover{
            transform:translateX(-5px);
        }
        
    </style>
</asp:Content>
