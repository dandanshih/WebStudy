﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<ICollection<MvcStudy.Models.ExternalLogin>>" %>

<% if (Model.Count > 0) { %>
    <h3>已註冊的外部登入</h3>
    <table>
        <tbody>
        <% foreach (MvcStudy.Models.ExternalLogin externalLogin in Model) { %>
            <tr>
                <td><%: externalLogin.ProviderDisplayName %></td>
                <td>
                    <% if (ViewBag.ShowRemoveButton) {
                        using (Html.BeginForm("Disassociate", "Account")) { %>
                            <%: Html.AntiForgeryToken() %>
                            <div>
                                <%: Html.Hidden("provider", externalLogin.Provider) %>
                                <%: Html.Hidden("providerUserId", externalLogin.ProviderUserId) %>
                                <input type="submit" value="移除" title="從您的帳戶移除這個 <%: externalLogin.ProviderDisplayName %> 認證" />
                            </div>
                        <% }
                    } else { %>
                        &nbsp;
                    <% } %>
                </td>
            </tr>
        <% } %>
        </tbody>
    </table>
<% } %>
