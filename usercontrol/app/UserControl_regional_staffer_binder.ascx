<%@ Control Language="c#" AutoEventWireup="True" Codebehind="UserControl_regional_staffer_binder.ascx.cs" Inherits="UserControl_regional_staffer_binder.TWebUserControl_regional_staffer_binder"%>
<%@ Register TagPrefix="cc1" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:UpdatePanel id="UpdatePanel_control" runat="server" updatemode="Conditional">
  <ContentTemplate>
    <table cellspacing="0" cellpadding="0" border="0" width="100%">
      <tr>
        <td>
          <cc1:TabContainer id="TabContainer_control" runat="server" autopostback="True" cssclass="ajax__tab_ki">
            <cc1:TabPanel runat="server" headertext="Ready rosters" id="TabPanel_ready_rosters"></cc1:TabPanel>
            <cc1:TabPanel runat="server" headertext="Sponsors" id="TabPanel_sponsors"></cc1:TabPanel>
            <cc1:TabPanel runat="server" headertext="Practitioners" id="TabPanel_practitioners"></cc1:TabPanel>
            <cc1:TabPanel runat="server" headertext="About" id="TabPanel_about"></cc1:TabPanel>
          </cc1:TabContainer>
        </td>
      </tr>
      <tr>
        <td style="PADDING:8px; BORDER-BOTTOM:thin solid silver; BORDER-LEFT:thin solid silver; BORDER-RIGHT:thin solid silver;">
          <ASP:PlaceHolder id="PlaceHolder_content" runat="server"></ASP:PlaceHolder>
        </td>
      </tr>
    </table>
  </ContentTemplate>
</asp:UpdatePanel>