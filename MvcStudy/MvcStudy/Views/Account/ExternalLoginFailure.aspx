<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="externalLoginFailureTitle" ContentPlaceHolderID="TitleContent" runat="server">
    登入失敗
</asp:Content>

<asp:Content ID="externalLoginFailureContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>登入失敗。</h1>
        <h2>服務的登入失敗。</h2>
    </hgroup>
</asp:Content>
