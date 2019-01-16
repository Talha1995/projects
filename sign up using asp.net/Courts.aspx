<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Courts.aspx.cs" Inherits="Courts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="839px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="TimeSlot1" HeaderText="TimeSlot1" SortExpression="TimeSlot1" />
            <asp:BoundField DataField="TimeSlot2" HeaderText="TimeSlot2" SortExpression="TimeSlot2" />
            <asp:BoundField DataField="TimeSlot3" HeaderText="TimeSlot3" SortExpression="TimeSlot3" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MyDatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [Courts] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [TimeSlot1] = @original_TimeSlot1 AND [TimeSlot2] = @original_TimeSlot2 AND [TimeSlot3] = @original_TimeSlot3 AND [Description] = @original_Description" InsertCommand="INSERT INTO [Courts] ([Name], [TimeSlot1], [TimeSlot2], [TimeSlot3], [Description]) VALUES (@Name, @TimeSlot1, @TimeSlot2, @TimeSlot3, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Courts]" UpdateCommand="UPDATE [Courts] SET [Name] = @Name, [TimeSlot1] = @TimeSlot1, [TimeSlot2] = @TimeSlot2, [TimeSlot3] = @TimeSlot3, [Description] = @Description WHERE [Id] = @original_Id AND [Name] = @original_Name AND [TimeSlot1] = @original_TimeSlot1 AND [TimeSlot2] = @original_TimeSlot2 AND [TimeSlot3] = @original_TimeSlot3 AND [Description] = @original_Description">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_TimeSlot1" Type="String" />
            <asp:Parameter Name="original_TimeSlot2" Type="String" />
            <asp:Parameter Name="original_TimeSlot3" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="TimeSlot1" Type="String" />
            <asp:Parameter Name="TimeSlot2" Type="String" />
            <asp:Parameter Name="TimeSlot3" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="TimeSlot1" Type="String" />
            <asp:Parameter Name="TimeSlot2" Type="String" />
            <asp:Parameter Name="TimeSlot3" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_TimeSlot1" Type="String" />
            <asp:Parameter Name="original_TimeSlot2" Type="String" />
            <asp:Parameter Name="original_TimeSlot3" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="454px">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="TimeSlot1" HeaderText="TimeSlot1" SortExpression="TimeSlot1" />
            <asp:BoundField DataField="TimeSlot2" HeaderText="TimeSlot2" SortExpression="TimeSlot2" />
            <asp:BoundField DataField="TimeSlot3" HeaderText="TimeSlot3" SortExpression="TimeSlot3" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
    <br />

</asp:Content>

