<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication1.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div align="center"  class="register" >
       
        <br />
        <h1>Create Account</h1>
        <br />
        <asp:Label ID="EmailExists" runat="server" ForeColor="red"></asp:Label>
        <asp:TextBox ID="TextName" Placeholder="  Enter Name" runat="server" Height="32px" Width="374px" BackColor="#D3D3D3" style="border-radius:20px;"></asp:TextBox> 
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextName" ErrorMessage="Name is required." ForeColor="#3AAFA9"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="TextEmail" Placeholder="  Enter Email" runat="server" Height="32px" Width="374px" TextMode="Email" BackColor="	#D3D3D3" style="border-radius:20px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextEmail" ErrorMessage="Email is required." ForeColor="#3AAFA9"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid Email Id" ForeColor="Red"></asp:RegularExpressionValidator>  
        <br />
        <asp:TextBox ID="TextPno" Placeholder="  Enter Mobile No." runat="server" Height="32px" Width="374px" TextMode="Phone" BackColor="	#D3D3D3" style="border-radius:20px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextPno" ErrorMessage="Mobile number is required." ForeColor="#3AAFA9"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="TextPass" Placeholder="  Enter Password" runat="server" Height="32px" Width="180px" TextMode="Password" BackColor="	#D3D3D3" style="border-radius:20px;"></asp:TextBox>
        <asp:TextBox ID="TextPass1" Placeholder="  Confirm Password"  runat="server" Height="32px" Width="180px" TextMode="Password" BackColor="	#D3D3D3" style="border-radius:20px;"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextPass" ErrorMessage="Password is required." ForeColor="#3AAFA9"></asp:RequiredFieldValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextPass1" ErrorMessage="Password is required." ForeColor="#3AAFA9"></asp:RequiredFieldValidator>
        <br />       
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Password must be atleast 8 characters long. " ForeColor="#3AAFA9"
        ValidationExpression="^.*(?=.{8,}).*$"
        ControlToValidate="TextPass"></asp:RegularExpressionValidator>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextPass" ControlToValidate="TextPass1" ErrorMessage="Both passwords must be same." ForeColor="#3AAFA9"></asp:CompareValidator>
        <br />
        <asp:TextBox ID="TextAddr" Placeholder="  Enter Address"  runat="server" Height="32px" Width="374px" BackColor="	#D3D3D3" style="border-radius:20px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextAddr" ErrorMessage="Address is required." ForeColor="#3AAFA9" Font-Strikeout="False"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label1" runat="server" style="color:aliceblue;">Already Registered..! <a href="Login.aspx" style="color:#b7c6d9; text-decoration-line:none;">Login here</a></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="32px" Text="Signup" Width="100px" OnClick="Button1_Click" BackColor="#3AAFA9" ForeColor="#12232E" style=" border-radius:20px; "/>
        
        </div>
   
      
  =
   <style>
       body{
          background-image:url(Images/bb1.jpg);
          background-size:cover;
      }
      
       .register{
           
            background-color:rgba(18, 35, 46,0.8);
            width: 410px;
            height:500px;
            margin-top:100px;
            transition: transform 0.5s;
            margin-left:1000px;
            align-content:center;
            border-radius:20px;
        }
      
        .register h1{
           color:#adb9c9;
            font-family:'Berkshire Swash';
            font-size:40px;
            
        }
        .register:hover{
            transform:translateX(-5px);
        }
        
       
        
       
       


        
      </style>
    
</asp:Content>

