<!DOCTYPE html>
<%@ Page language="c#" codebehind="salogin.aspx.cs" AutoEventWireup="True" Inherits="salogin.TWebForm_salogin" %>
<%@ Register TagPrefix="uc1" TagName="UserControl_precontent" Src="~/usercontrol/app/UserControl_precontent.ascx" %>
<%@ Register TagPrefix="uc1" TagName="UserControl_postcontent" Src="~/usercontrol/app/UserControl_postcontent.ascx" %>
<%@ Register TagPrefix="uc2" TagName="UserControl_update_progress_blocker" Src="~/usercontrol/app/UserControl_update_progress_blocker.ascx" %>
<html>
  <head runat="server">
    <!-- $Id: salogin.aspx 7189 2020-05-25 01:22:15Z kevinanlipscomb $ -->
    <title></title>
    <link href="css/standard.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 7]> <style type="text/css">@import "css/standard-overrides-for-ie6.css";</style><![endif]-->
    <script type="text/javascript" src="js/sha1.js"></script>
  </head>

  <body bgcolor="white">
  <form id="Form_control" runat="server">
		  <uc1:UserControl_precontent id="UserControl_precontent" runat="server"></uc1:UserControl_precontent>
		  <table bordercolor="#dcdcdc" cellspacing="0" cellpadding="0" border="1">
			  <tr>
				<td>
				  <table cellspacing="0" cellpadding="5" border="0">
					  <tr>
						<td bgcolor="#f5f5f5">
						<table cellspacing="0" cellpadding="0" width="100%" border="0">
							<tr>
							  <td><strong>System Administrator log in</strong></td>
							  <td>
								<div align="right">
							  <ASP:CustomValidator id="CustomValidator_account_exists" runat="server" errormessage="Invalid user/password combination. Please try again." font-bold="True" onservervalidate="CustomValidator_account_exists_ServerValidate">!ERR!</ASP:CustomValidator>
								</div></td>
							</tr>
						</table></td>
					  </tr>
					  <tr>
						<td>
<asp:UpdatePanel id="UpdatePanel_control" runat="server" updatemode="Conditional">
  <ContentTemplate>
			<table cellspacing="0" cellpadding="5">
			  <tbody>
				<tr>
				  <td><p align="right">Regional council:</p></td>
				  <td>
						<asp:dropdownlist id="DropDownList_region" runat="server" onselectedindexchanged="DropDownList_region_SelectedIndexChanged" AutoPostBack="True"></asp:dropdownlist>
				    <asp:RequiredFieldValidator ID="RequiredFieldValidator_region" runat="server" ErrorMessage="Please select a Regional council." ControlToValidate="DropDownList_region" Font-Bold="True">!ERR!</asp:RequiredFieldValidator>
				  </td>
				</tr>
				<tr>
				  <td><p align="right"><ASP:Label id="Label_user_kind" runat="server" enabled="False">Mimic what kind of user?</ASP:Label>:</p></td>
				  <td>
									  <ASP:DropDownList id="DropDownList_user_kind" runat="server" enabled="false" autopostback="True" onselectedindexchanged="DropDownList_user_kind_SelectedIndexChanged">
								<ASP:ListItem value="0">-- Select --</ASP:ListItem>
								<ASP:ListItem value="coned_sponsor">Continuing Education Sponsor</ASP:ListItem>
								<ASP:ListItem value="regional_staffer">Regional staffer</ASP:ListItem></ASP:DropDownList><ASP:RegularExpressionValidator id="RegularExpressionValidator_user_kind" runat="server" errormessage="Please select a user kind." font-bold="True" controltovalidate="DropDownList_user_kind" validationexpression="[a-z_]+">!ERR!</ASP:RegularExpressionValidator>
									</td>
				</tr>
				<tr>
				  <td>
					<p align="right"><ASP:Label id="Label_user" runat="server" enabled="False">User</ASP:Label>:</p>
				  </td>
				  <td>
							<asp:dropdownlist id="DropDownList_user"
											  runat="server" enabled="false" onselectedindexchanged="DropDownList_user_SelectedIndexChanged">
							</asp:dropdownlist><ASP:RegularExpressionValidator id="RegularExpressionValidator_user" runat="server" errormessage="Please select a user." font-bold="True" controltovalidate="DropDownList_user" validationexpression="[^0].+">!ERR!</ASP:RegularExpressionValidator>
				  </td>
				</tr>
				<tr>
				  <td>
					<p align="right">System Administrator password:</p>
				  </td>
				  <td>
					<asp:textbox id="TextBox_noop_ie_behavior_workaround" runat="server" style="DISPLAY: none; VISIBILITY: hidden" /><!-- To work around an IE bug that otherwise prevents Enter in a textbox from submitting a form. -->
					<asp:textbox id="TextBox_password" runat="server" textmode="Password" autocomplete="off"></asp:textbox>
				  </td>
				</tr>
				<tr>
				  <td>
				  </td>
				  <td>
					<asp:checkbox id="CheckBox_keep_me_logged_in"
								  runat="server"
								  text="Keep me logged in on this computer" enabled="False" visible="False">
					</asp:checkbox>
				  </td>
				</tr>
				<tr>
				  <td valign="top">
				  </td>
				  <td>

						<table cellspacing="0" cellpadding="5" width="1%">
							<tr>
							  <td><asp:button id="Button_log_in"
								runat="server" text="Log in" font-bold="True" onclick="Button_log_in_Click">
					</asp:button></td>
							  <td nowrap="nowrap">
								<ASP:button id="Button_new_password" runat="server" text="Email new password" onclick="Button_new_password_Click"></ASP:button></td>
							</tr>
						</table>
				  </td>
				</tr>
			  </tbody>
			</table>
  </ContentTemplate>
</asp:UpdatePanel>
						</td>
					  </tr>
				  </table>
				</td>
			  </tr>
		  </table>
    <input id="Hidden_client_timezone_offset" runat="server" type="hidden" />
  <uc1:UserControl_postcontent id="UserControl_postcontent" runat="server"></uc1:UserControl_postcontent>
      <uc2:UserControl_update_progress_blocker id="UserControl_update_progress_blocker_control" runat="server"></uc2:UserControl_update_progress_blocker>
    </form>
</body>
</html>
