<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Wicked Easy Recipes</title>
    <link rel="stylesheet" type="text/css" href="Style.css" />
    
</head>

<body>
   <div class="header">
        <h1>Wicked Easy Recipes</h1>

    </div>

    <h2>Using 5 Ingredients or Less!</h2>

    <br />

    <form id="form1" runat="server">
        <div class="auto-style1" style="text-align: center">
        <a href="Default.aspx" style="color: red">Home</a>&nbsp; |&nbsp;
        <a href="NewRecipe.aspx" style="color: red">New Recipe</a>&nbsp; |&nbsp;
        <a href="AboutUs.aspx" style="color: red">About Us</a>&nbsp; |&nbsp;
        <a href="ContactUs.aspx" style="color: red">Contact Us</a>&nbsp; |&nbsp
            </div>
       
   <div style=" padding: 20px;
    margin-top:30px;    
    text-align:center;
  
  
    background-color:coral;
    color:White;
    padding:15px;
    align-content:center"> 
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jimmy_HW6_recipes %>" DeleteCommand="DELETE FROM [AMQuick_HW6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [AMQuick_HW6] ([recipeName], [submittedBy], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes]) VALUES (@recipeName, @submittedBy, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @preparation, @notes)" SelectCommand="SELECT * FROM [AMQuick_HW6]" UpdateCommand="UPDATE [AMQuick_HW6] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [preparation] = @preparation, [notes] = @notes WHERE [recipeID] = @recipeID">
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
    
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="recipeName" HeaderText="recipe Name" SortExpression="recipeName" />
                <asp:BoundField DataField="submittedBy" HeaderText="submitted By" SortExpression="submittedBy" />
                <asp:HyperLinkField DataNavigateUrlFields="RecipeID" DataNavigateUrlFormatString="Details.aspx?recipeID={0}" Text="View details" />
            </Columns>
        </asp:GridView>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Newrecipe.aspx">Add a new recipe!</asp:HyperLink>
    

   </div>
     </form>
            <div id="footer">
                &copy; 2015. MSCI:3300 Software Design & Development
            </div>
      
    
</body>
</html>