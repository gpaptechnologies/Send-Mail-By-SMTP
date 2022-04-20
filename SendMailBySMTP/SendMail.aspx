<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendMail.aspx.cs" Inherits="SendMailBySMTP.SendMail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Send e-mail by using SMTP server</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="tblMail" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1" HorizontalAlign="Center">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell ColumnSpan="2">
                Send E-Mail by using SMTP Server<hr />
                    </asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblToAddress" runat="server" Text="To Address" Font-Bold="true"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtToAddress" runat="server" Width="200px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblSubject" runat="server" Text="Subject" Font-Bold="true"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtSubject" runat="server" Width="200px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblBody" runat="server" Text="Body" Font-Bold="true"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Width="200px" Height="100px"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                        <hr />
                        <asp:Button ID="btnSendMail" runat="server" Text="Send Mail" Font-Bold="true" BackColor="YellowGreen" OnClick="btnSendMail_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableFooterRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:Label ID="lblMessage" runat="server" Font-Bold="true" ForeColor="Green"></asp:Label>
                    </asp:TableCell>
                </asp:TableFooterRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
