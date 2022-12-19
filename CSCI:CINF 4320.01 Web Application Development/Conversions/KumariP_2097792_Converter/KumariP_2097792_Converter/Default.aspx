<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KumariP_2097792_Converter.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div accesskey="lblTest">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="txtTopic" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Conversions Calculator"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="lblType" runat="server" Font-Bold="True" Text="Type"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
                <asp:ListItem>Select Type</asp:ListItem>
                <asp:ListItem>Length</asp:ListItem>
                <asp:ListItem>Liquid</asp:ListItem>
                <asp:ListItem>Temperature</asp:ListItem>
                <asp:ListItem>Mass</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lblConversions" runat="server" Font-Bold="True" Text="Conversions"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlConversions" runat="server" AutoPostBack="True">
                <asp:ListItem>Select Conversions</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lblQuanity" runat="server" Font-Bold="True" Text="Quanity"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtQuanity" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnConvert" runat="server" Text="Convert" Font-Bold="True" OnClick="btnConvert_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClean" runat="server" Text="Clean" Font-Bold="True" Height="26px" OnClick="btnClean_Click" />
            <br />
            <br />
            <br />
            <asp:Label ID="lblResult" runat="server" Font-Bold="True" Text="Result"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblFinalResut" runat="server" Text="Value" ></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
