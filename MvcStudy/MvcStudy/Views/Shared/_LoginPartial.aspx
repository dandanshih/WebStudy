﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<% if (Request.IsAuthenticated) { %>
    您好， <%: Html.ActionLink(User.Identity.Name, "Manage", "Account", routeValues: null, htmlAttributes: new { @class = "username", title = "管理" }) %>!
    <% using (Html.BeginForm("LogOff", "Account", FormMethod.Post, new { id = "logoutForm" })) { %>
        <%: Html.AntiForgeryToken() %>
        <a href="javascript:document.getElementById('logoutForm').submit()">登出</a>
    <% } %>
<% } else { %>
    <ul>
        <li><%: Html.ActionLink("註冊", "Register", "Account", routeValues: null, htmlAttributes: new { id = "registerLink" })%></li>
        <li><%: Html.ActionLink("登入", "Login", "Account", routeValues: null, htmlAttributes: new { id = "loginLink" })%></li>
    </ul>
<% } %>