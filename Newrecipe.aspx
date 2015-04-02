﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Newrecipe.aspx.vb" Inherits="Details" %>

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
        
   <div style=" 
     margin-top:30px;   
    text-align:center;
   
   
    background-color:coral;
    color:White;
    padding:15px;
    align-content:center"> 
        <asp:SqlDataSource ID="Sql_recipedata" runat="server" ConnectionString="<%$ ConnectionStrings:jimmy_HW6_recipes %>" DeleteCommand="DELETE FROM [AMQuick_HW6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [AMQuick_HW6] ([recipeName], [submittedBy], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes]) VALUES (@recipeName, @submittedBy, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @preparation, @notes)" SelectCommand="SELECT * FROM [AMQuick_HW6]" UpdateCommand="UPDATE [AMQuick_HW6] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [preparation] = @preparation, [notes] = @notes WHERE [recipeID] = @recipeID">
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
      <div style="text-align:center"  ></div><asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="recipeID" DataSourceID="Sql_recipedata" Height="50px" Width="255px" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="recipeName" HeaderText="recipe Name:*" SortExpression="recipeName" />
                <asp:BoundField DataField="submittedBy" HeaderText="submitted By:*" SortExpression="submittedBy" />
                <asp:BoundField DataField="ingredient1" HeaderText="ingredient#1:*" SortExpression="ingredient1" />
                <asp:BoundField DataField="ingredient2" HeaderText="ingredient#2:" SortExpression="ingredient2" />
                <asp:BoundField DataField="ingredient3" HeaderText="ingredient#3:" SortExpression="ingredient3" />
                <asp:BoundField DataField="ingredient4" HeaderText="ingredient#4:" SortExpression="ingredient4" />
                <asp:BoundField DataField="ingredient5" HeaderText="ingredient#5:" SortExpression="ingredient5" />
                <asp:BoundField DataField="preparation" HeaderText="preparation:*" SortExpression="preparation" />
                <asp:BoundField DataField="notes" HeaderText="notes:" SortExpression="notes" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
       </div>
    
</form>
            <div id="footer">
                &copy; 2015. MSCI:3300 Software Design & Development
            </div>
       
    
</body>
</html>