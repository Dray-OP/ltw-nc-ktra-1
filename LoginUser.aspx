<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginUser.aspx.cs" Inherits="baitap1.LoginUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form>
        <div class="form-group">
                <asp:Label ID="lblmsg"
                    Text="Validation form"
                    runat="server" />
        </div>
        <div class="form-group">
            <label for="txt_UserName">Username</label>
            <asp:TextBox ID="txt_UserName" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                runat="server"
                Display="Dynamic"
                ErrorMessage="Username is required!"
                ControlToValidate="txt_UserName"
                ForeColor="Red"
                SetFocusOnError="True"
                CssClass="form-text text-danger"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label for="txt_Password">Password</label>
            <asp:TextBox ID="txt_Password" CssClass="form-control" runat="server" MaxLength="20" TextMode="Password" EnableViewState="False"></asp:TextBox>
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password is required!" ControlToValidate="txt_Password" CssClass="form-text text-danger"></asp:RequiredFieldValidator>--%>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txt_Password" Display="Dynamic" ErrorMessage="Password must contain" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True" ValidateEmptyText="True">Invalid Password</asp:CustomValidator>
        </div>

        <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Button" OnClick="Button1_Click" />

    </form>
</asp:Content>
