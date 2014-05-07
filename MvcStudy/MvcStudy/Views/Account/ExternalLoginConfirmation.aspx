<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcStudy.Models.RegisterExternalLoginModel>" %>

<asp:Content ID="externalLoginConfirmationTitle" ContentPlaceHolderID="TitleContent" runat="server">
    註冊
</asp:Content>

<asp:Content ID="externalLoginConfirmationContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>註冊。</h1>
        <h2>關聯 <%: ViewBag.ProviderDisplayName %> 帳戶。</h2>
    </hgroup>

    <% using (Html.BeginForm("ExternalLoginConfirmation", "Account", new { ReturnUrl = ViewBag.ReturnUrl })) { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>關聯表單</legend>
            <p>
                您已成功通過 <strong><%: ViewBag.ProviderDisplayName %></strong> 的驗證。
                請在下方輸入此網站的使用者名稱，然後按一下 [確認] 按鈕以完成
                登入。
            </p>
            <ol>
                <li class="name">
                    <%: Html.LabelFor(m => m.UserName) %>
                    <%: Html.TextBoxFor(m => m.UserName) %>
                    <%: Html.ValidationMessageFor(m => m.UserName) %>
                </li>
            </ol>
            <%: Html.HiddenFor(m => m.ExternalLoginData) %>
            <input type="submit" value="註冊" />
        </fieldset>
    <% } %>
</asp:Content>

<asp:Content ID="scriptsContent" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
