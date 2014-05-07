<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcStudy.Models.LocalPasswordModel>" %>

<asp:Content ID="manageTitle" ContentPlaceHolderID="TitleContent" runat="server">
    管理帳戶
</asp:Content>

<asp:Content ID="manageContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>管理帳戶。</h1>
    </hgroup>

    <p class="message-success"><%: (string)ViewBag.StatusMessage %></p>

    <p>您已利用 <strong><%: User.Identity.Name %></strong> 的身分登入。</p>

    <% if (ViewBag.HasLocalPassword) {
        Html.RenderPartial("_ChangePasswordPartial");
    } else {
        Html.RenderPartial("_SetPasswordPartial");
    } %>

    <section id="externalLogins">
        <%: Html.Action("RemoveExternalLogins") %>

        <h3>新增外部登入</h3>
        <%: Html.Action("ExternalLoginsList", new { ReturnUrl = ViewBag.ReturnUrl }) %>
    </section>
</asp:Content>

<asp:Content ID="scriptsContent" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>