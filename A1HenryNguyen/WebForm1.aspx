<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="A1HenryNguyen.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 589px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="245px" ImageUrl="~/P2IQhJS - Imgur.png" Width="477px" />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="#66FF33" >
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Firstname:</td>
                    <td>
                        <asp:TextBox ID="fnametxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Lastname:</td>
                    <td>
                        <asp:TextBox ID="lnametxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Year of birth:</td>
                    <td>
                        <asp:TextBox ID="yearstxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="calculatebtn" runat="server" OnClick="calculatebtn_Click" Text="Calculate" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="yearstxt" Display="Dynamic" ErrorMessage="Year of birth must be less than 2021" ForeColor="Blue" MaximumValue="2020" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fnametxt" Display="Dynamic" ErrorMessage="First name is required" ForeColor="Blue"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lnametxt" Display="Dynamic" ErrorMessage="Lastname is required" ForeColor="Blue"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="yearstxt" Display="Dynamic" ErrorMessage="Year of birth is required" ForeColor="Blue"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
        <p>
                        <asp:Label ID="firstlbl" runat="server"></asp:Label>
                    </p>
        <p>
            <asp:Label ID="lastlbl" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="agelbl" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="maxlbl" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="targetlbl" runat="server"></asp:Label>
        </p>
        <p>
            <h2>Target Heart Rate Monitor</h2></p>
    </form>
</body>
</html>
