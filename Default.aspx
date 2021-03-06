﻿
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	
    Home

</title><link href="CSS/StyleSheet.css" rel="stylesheet" type="text/css" /></head>
<body>
    


        <form id="form1" runat="server">
    


        <div id="container">
            <div id="header">
                <h1>Wicked Easy Recipes</h1>
                <h2>Using 5 Ingredients or Less!</h2>
            </div>

            <div id="menu">
                <ul id="nav">
                    <li><a href="Default.aspx">Home</a></li>
                    <li><a href="NewRecipe.aspx">New Recipe</a></li>
                    <li><a href="AboutUs.aspx">About Us</a></li>
                    <li class="contact"><a href="ContactUs.aspx">Contact Us</a></li>
                </ul>
            </div>

            <div id="main">
                
    
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Recipe]" DeleteCommand="DELETE FROM [Recipe] WHERE [Recipe ID] = ?" InsertCommand="INSERT INTO [Recipe] ([Recipe ID], [Recipe Name], [Submitted By], [Ingredient#1], [Ingredient#2], [Ingredient#3], [Ingredient#4], [Ingredient#5], [Preparation], [Note]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [Recipe] SET [Recipe Name] = ?, [Submitted By] = ?, [Ingredient#1] = ?, [Ingredient#2] = ?, [Ingredient#3] = ?, [Ingredient#4] = ?, [Ingredient#5] = ?, [Preparation] = ?, [Note] = ? WHERE [Recipe ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="Recipe_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipe_ID" Type="Int32" />
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Note" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Note" Type="String" />
                <asp:Parameter Name="Recipe_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Recipe ID" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Recipe Name" HeaderText="Recipe Name" SortExpression="Recipe Name" />
                <asp:BoundField DataField="Submitted By" HeaderText="Submitted By" SortExpression="Submitted By" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:GridView>
    
 

            </div>

            <div id="footer">
                &copy; 2015. MSCI:3300 Software Design & Development
            </div>
        </div>
    
        </form>
    
</body>
</html>