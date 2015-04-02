<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="Sql_recipedata" runat="server" ConnectionString="<%$ ConnectionStrings:jimmy_HW6_recipes %>" DeleteCommand="DELETE FROM [AMQuick_HW6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [AMQuick_HW6] ([recipeName], [submittedBy], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes]) VALUES (@recipeName, @submittedBy, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @preparation, @notes)" SelectCommand="SELECT * FROM [AMQuick_HW6] WHERE ([recipeID] = @recipeID)" UpdateCommand="UPDATE [AMQuick_HW6] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [preparation] = @preparation, [notes] = @notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="recipeID" QueryStringField="recipeID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
       <span class="deletedRecipe"></span> <asp:Label ID="lbl_deletedrecipe" runat="server" Text="Label"></asp:Label><span/>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="recipeID" DataSourceID="Sql_recipedata" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="recipeName" HeaderText="recipe Name:*" SortExpression="recipeName" />
                <asp:BoundField DataField="submittedBy" HeaderText="submitted By:*" SortExpression="submittedBy" />
                <asp:BoundField DataField="ingredient1" HeaderText="ingredient1:*" SortExpression="ingredient1" />
                <asp:BoundField DataField="ingredient2" HeaderText="ingredient2:" SortExpression="ingredient2" />
                <asp:BoundField DataField="ingredient3" HeaderText="ingredient3:" SortExpression="ingredient3" />
                <asp:BoundField DataField="ingredient4" HeaderText="ingredient4:" SortExpression="ingredient4" />
                <asp:BoundField DataField="ingredient5" HeaderText="ingredient5:" SortExpression="ingredient5" />
                <asp:BoundField DataField="preparation" HeaderText="preparation:*" SortExpression="preparation" />
                <asp:BoundField DataField="notes" HeaderText="notes:" SortExpression="notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
