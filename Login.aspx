<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="baitap1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="formLogin" runat="server">
        <div>
            <table>
                <tr>
                    <td class="style1" colspan="3" >
                        <asp:Label ID="lblmsg"
                            Text="Validation form"
                            runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>UserName
                    </td>
                    <td>
                        <asp:TextBox ID="txt_UserName" runat="server" Style="width: 250px" OnTextChanged="txt_UserName_TextChanged">
                        </asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="txt_UserName"
                            Display="Dynamic"
                            ErrorMessage="UserName is not empty"
                            ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password
                    </td>
                    <td>
                        <asp:TextBox ID="txt_Password" runat="server" Style="width: 250px">
                        </asp:TextBox>
                    </td>
                    <td>
                        <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_Password" Display="Dynamic" ErrorMessage="UserName is not empty" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>--%>

                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txt_Password" Display="Dynamic" ErrorMessage="Password must contain" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True" ValidateEmptyText="True">Invalid Password</asp:CustomValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
