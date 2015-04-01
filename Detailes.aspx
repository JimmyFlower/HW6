
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
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Recipe] WHERE [Recipe ID] = ?" InsertCommand="INSERT INTO [Recipe] ([Recipe ID], [Recipe Name], [Submitted By], [Ingredient#1], [Ingredient#2], [Ingredient#3], [Ingredient#4], [Ingredient#5], [Preparation], [Note]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Recipe]" UpdateCommand="UPDATE [Recipe] SET [Recipe Name] = ?, [Submitted By] = ?, [Ingredient#1] = ?, [Ingredient#2] = ?, [Ingredient#3] = ?, [Ingredient#4] = ?, [Ingredient#5] = ?, [Preparation] = ?, [Note] = ? WHERE [Recipe ID] = ?">
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
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Recipe ID" DataSourceID="SqlDataSource1" Height="50px" Width="171px" EnableModelValidation="True" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <Fields>
                <asp:BoundField DataField="Recipe Name" HeaderText="Recipe Name*" SortExpression="Recipe Name" />
                <asp:BoundField DataField="Submitted By" HeaderText="Submitted By*" SortExpression="Submitted By" />
                <asp:BoundField DataField="Ingredient#1" HeaderText="Ingredient#1*" SortExpression="Ingredient#1" />
                <asp:BoundField DataField="Ingredient#2" HeaderText="Ingredient#2" SortExpression="Ingredient#2" />
                <asp:BoundField DataField="Ingredient#3" HeaderText="Ingredient#3" SortExpression="Ingredient#3" />
                <asp:BoundField DataField="Ingredient#4" HeaderText="Ingredient#4" SortExpression="Ingredient#4" />
                <asp:BoundField DataField="Ingredient#5" HeaderText="Ingredient#5" SortExpression="Ingredient#5" />
                <asp:BoundField DataField="Preparation" HeaderText="Preparation*" SortExpression="Preparation" />
                <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
            </Fields>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle ForeColor="DarkSlateBlue" HorizontalAlign="Center" BackColor="PaleGoldenrod" />


        </asp:DetailsView>
  
</div>

            <div id="footer">
                &copy; 2015. MSCI:3300 Software Design & Development
            </div>
        </div>
    
        </form>
    
</body>
</html>