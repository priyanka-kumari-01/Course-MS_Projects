<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TicTacToeGame_PriyankaK_2097792.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="MyStyleSheet.css" rel="stylesheet" />
    <script src="MyJavaScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
                <div id="main">
            <h1>TIC TAC TOE</h1>
            <!-- Game Instructions -->
            <h2>Game starts by just Tap on box</h2>
            <h4>First Player starts as Player X</h4>
            <h4>Second Player as starts as Player 0</h4>       
            <!-- 3*3 grid of Boxes -->          
            <div style=" margin-bottom: 20px;">
                <asp:Label ID="turn" runat="server" Text=" " style="color: darkblue; font-size: 20px; margin: 20px;"></asp:Label>
            </div>
            <div>
                <asp:TextBox ID="Txtbtn1" runat="server" ReadOnly="True" onclick= "ticTac_1(); start()" CssClass="ticTacBox"></asp:TextBox>
                <asp:TextBox ID="Txtbtn2" runat="server" ReadOnly="True" onclick= "ticTac_2(); start()" CssClass="ticTacBox"></asp:TextBox>
                <asp:TextBox ID="Txtbtn3" runat="server" ReadOnly="True" onclick= "ticTac_3(); start()" CssClass="ticTacBox"></asp:TextBox>
            </div>
            <div>
                <asp:TextBox ID="Txtbtn4" runat="server" ReadOnly="True" onclick= "ticTac_4(); start()" CssClass="ticTacBox"></asp:TextBox>
                <asp:TextBox ID="Txtbtn5" runat="server" ReadOnly="True" onclick= "ticTac_5(); start()" CssClass="ticTacBox"></asp:TextBox>
                <asp:TextBox ID="Txtbtn6" runat="server" ReadOnly="True" onclick= "ticTac_6(); start()" CssClass="ticTacBox"></asp:TextBox>
            </div>
            <div>
                <asp:TextBox ID="Txtbtn7" runat="server" ReadOnly="True" onclick= "ticTac_7(); start()" CssClass="ticTacBox"></asp:TextBox>
                <asp:TextBox ID="Txtbtn8" runat="server" ReadOnly="True" onclick= "ticTac_8(); start()" CssClass="ticTacBox"></asp:TextBox>
                <asp:TextBox ID="Txtbtn9" runat="server" ReadOnly="True" onclick= "ticTac_9(); start()" CssClass="ticTacBox"></asp:TextBox>
            </div>    
                <!-- Button to reset game -->
            <div>
                <button id="reset" onclick="reset()"">
                    RESET
                </button>
            </div> 
                 <div>
                     <asp:Label ID="invalid" runat="server" Text=" " style="color: red; font-size: 25px;"></asp:Label>
                </div>
                <div> 
                <!-- Space to show player turn -->
                    
                    <asp:Label ID="resut" runat="server" Text=" "></asp:Label>
                </div>
        </div>
        <!-- Grid end here  --> 
    </form>
</body>
</html>
