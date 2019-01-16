<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Members.aspx.cs" Inherits="Member" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="MemberName" HeaderText="MemberName" SortExpression="MemberName" />
            <asp:BoundField DataField="MemberEmail" HeaderText="MemberEmail" SortExpression="MemberEmail" />
            <asp:BoundField DataField="MembershipID" HeaderText="MembershipID" SortExpression="MembershipID" />
            <asp:BoundField DataField="MemberAddress" HeaderText="MemberAddress" SortExpression="MemberAddress" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MyDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Member] WHERE [Id] = @original_Id AND [MemberName] = @original_MemberName AND [MemberEmail] = @original_MemberEmail AND [MembershipID] = @original_MembershipID AND [MemberAddress] = @original_MemberAddress AND [Username] = @original_Username AND [Password] = @original_Password" InsertCommand="INSERT INTO [Member] ([Id], [MemberName], [MemberEmail], [MembershipID], [MemberAddress], [Username], [Password]) VALUES (@Id, @MemberName, @MemberEmail, @MembershipID, @MemberAddress, @Username, @Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Member]" UpdateCommand="UPDATE [Member] SET [MemberName] = @MemberName, [MemberEmail] = @MemberEmail, [MembershipID] = @MembershipID, [MemberAddress] = @MemberAddress, [Username] = @Username, [Password] = @Password WHERE [Id] = @original_Id AND [MemberName] = @original_MemberName AND [MemberEmail] = @original_MemberEmail AND [MembershipID] = @original_MembershipID AND [MemberAddress] = @original_MemberAddress AND [Username] = @original_Username AND [Password] = @original_Password">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_MemberName" Type="String" />
            <asp:Parameter Name="original_MemberEmail" Type="String" />
            <asp:Parameter Name="original_MembershipID" Type="Int32" />
            <asp:Parameter Name="original_MemberAddress" Type="String" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="MemberName" Type="String" />
            <asp:Parameter Name="MemberEmail" Type="String" />
            <asp:Parameter Name="MembershipID" Type="Int32" />
            <asp:Parameter Name="MemberAddress" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MemberName" Type="String" />
            <asp:Parameter Name="MemberEmail" Type="String" />
            <asp:Parameter Name="MembershipID" Type="Int32" />
            <asp:Parameter Name="MemberAddress" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_MemberName" Type="String" />
            <asp:Parameter Name="original_MemberEmail" Type="String" />
            <asp:Parameter Name="original_MembershipID" Type="Int32" />
            <asp:Parameter Name="original_MemberAddress" Type="String" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="441px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="MemberName" HeaderText="MemberName" SortExpression="MemberName" />
            <asp:BoundField DataField="MemberEmail" HeaderText="MemberEmail" SortExpression="MemberEmail" />
            <asp:BoundField DataField="MembershipID" HeaderText="MembershipID" SortExpression="MembershipID" />
            <asp:BoundField DataField="MemberAddress" HeaderText="MemberAddress" SortExpression="MemberAddress" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
  
</asp:Content>

