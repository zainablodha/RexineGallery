<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageCustomer.aspx.cs" Inherits="WebApplication1.Admin.ManageCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="gv" align="center">
         <asp:Label class="or" runat="server" Text="Customer Details"></asp:Label><br />
        <asp:GridView ID="ManageCustomers" runat="server" AutoGenerateColumns="False" DataKeyNames="CustId" DataSourceID="SqlDataSource1" Width="585px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnSelectedIndexChanged="ManageCustomers_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="CustId" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="CustId" />
                <asp:BoundField DataField="CustName" HeaderText="Name" SortExpression="CustName" />
                <asp:BoundField DataField="CustEmail" HeaderText="Email" SortExpression="CustEmail" />
                <asp:BoundField DataField="CustPno" HeaderText="Phone no" SortExpression="CustPno" />
                <asp:BoundField DataField="CustPass" HeaderText="Password" SortExpression="CustPass" />
                <asp:BoundField DataField="CustAddr" HeaderText="Address" SortExpression="CustAddr" />
                <asp:CommandField ShowEditButton="true" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Customer]" DeleteCommand="delete from Customer where CustId=@CustId" UpdateCommand="UPDATE Customer SET CustName = @CustName, CustEmail=@CustEmail,CustPno=@CustPno, CustPass=@CustPass, CustAddr=@CustAddr WHERE (CustId = @CustId)" InsertCommandType="Text">
            <UpdateParameters>
                <asp:Parameter Name="CustName" />
                <asp:Parameter Name="CustEmail" />
                <asp:Parameter Name="CustPno" />
                <asp:Parameter Name="CustPass" />
                <asp:Parameter Name="CustAddr" />
                <asp:Parameter Name="CustId" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <style>
        body{
            background: radial-gradient(circle, #EEFBFB, #add8e6);
            background-size: cover;
        }
        .gv{
            margin-top:100px;
        }
        .or{
             font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size:30px; 
        }
    </style>
</asp:Content>
