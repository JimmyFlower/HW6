
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
        
    text-align:center;
  
    margin-top:30px;
   
    background-color:coral;
    color:White;
    padding:15px;
    align-content:center"> 
	  <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your name:<br />
        <asp:TextBox ID="senderName" runat="server" placeholder="First and last name" ></asp:TextBox>
        <br />
        <br />

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server" placeholder="Preferred email address" ></asp:TextBox>
        <br />
        <br />
       
        Your subject:<br />
        <asp:TextBox ID="senderSubject" runat="server"></asp:TextBox>
        <br />
        <br />

         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" placeholder="Please enter your message." Width="361px" ></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>
</div>

          </form>  

            <div id="footer">
                &copy; 2015. MSCI:3300 Software Design & Development
            </div>
    
   
</body>
</html>
