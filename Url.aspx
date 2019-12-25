<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Url.aspx.cs" Inherits="WebApplication1.Url" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    	<link rel="stylesheet" type="text/css" href="CSS/cssButton/button.css">


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p> Please enter the url of suspected profile.</p>
            <asp:TextBox ID="TextBox1" class="advancedSearchTextBox" runat="server"></asp:TextBox>
        </div>
        <button style="--content: 'Analyze';" type="submit" name="btnAnalyze" id="btnAnalyze" runat="server" onserverclick="Analyze_Click">
            <div class="left"></div>
             Analyze
            <div class="right"></div>
       </button>

        <button style="--content: 'Cancel';" type="button" name="btnCancel" id="btnCancel" runat="server" onserverclick="Cancel_Click">
            <div class="left">
            </div>
             Cancel
            <div class="right"></div>
        </button>
        </br>
        </br>
        </br>
        <asp:Label ID="WarningLabel" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
