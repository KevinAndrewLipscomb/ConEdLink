<%@ Control Language="c#" AutoEventWireup="True" CodeBehind="UserControl_postcontent.ascx.cs" Inherits="UserControl_postcontent.TWebUserControl_postcontent" %>
</td></tr></table>
<p></p>
<table>
  <tr>
    <td>
      <table bordercolor="#dcdcdc" cellspacing="0" cellpadding="0" border="0">
        <tr>
          <td>
            <table cellspacing="0" cellpadding="5" border="0">
              <tr>
                <td id="Td_reference_material" runat="server" style="border-left:2px dashed sandybrown; border-top:2px dashed sandybrown;" valign="top">
                  <table bordercolor="#dcdcdc" cellspacing="0" cellpadding="0" border="0">
                    <tr>
                      <td>
                        <table cellspacing="0" cellpadding="5" border="0">
                          <tr><td><small><strong><a name="ReferenceMaterial"></a>Reference material</strong></small></td></tr>
                          <tr>
                            <td>
                              <small><small>These links open in a new window.</small></small>
                              <table cellspacing="0" cellpadding="5" border="0">
                                <tr>
                                  <td valign="top">&bull;</td>
                                  <td><small><a href="http://www.portal.state.pa.us/portal/server.pt?open=514&objID=556974&mode=2" target="_blank">Regional Councils</a></small></td>
                                </tr>
                                <tr>
                                  <td valign="top">&bull;</td>
                                  <td><small><a href="https://ems.health.state.pa.us/Registry/" target="_blank">EMS Registry System (EMSRS)</a></small></td>
                                </tr>
                                <tr>
                                  <td valign="top">&bull;</td>
                                  <td><small><a runat="server" href="~/resource/use-guide-for-con-ed-sponsors/use-guide-for-con-ed-sponsors.pdf" target="_blank">Use Guide for Con Ed Sponsors</a></small></td>
                                </tr>
                                <tr id="TableRow_creating_rosters_using_barcode_scanners" runat="server" visible="false">
                                  <td valign="top">&bull;</td>
                                  <td><small><a runat="server" href="~/resource/creating-conedlink-rosters-using-barcode-scanners/creating-conedlink-rosters-using-barcode-scanners.pdf" target="_blank">Creating rosters using Windows Mobile barcode scanners</a></small></td>
                                </tr>
                                <tr id="TableRow_creating_rosters_using_cipherlab_barcode_readers" runat="server" visible="false">
                                  <td valign="top">&bull;</td>
                                  <td><small><a runat="server" href="~/resource/creating-conedlink-rosters-using-cipherlab-barcode-readers/creating-conedlink-rosters-using-cipherlab-based-barcode-readers.pdf" target="_blank">Creating rosters using CipherLab barcode scanners</a></small></td>
                                </tr>
                                <tr>
                                  <td valign="top">&bull;</td>
                                  <td><small><a runat="server" href="~/resource/use-guide-for-regional-staffers/use-guide-for-regional-staffers.pdf" target="_blank">Use Guide for Regional Staffers</a></small></td>
                                </tr>
                                <tr>
                                  <td valign="top">&bull;</td>
                                  <td><small><a runat="server" href="~/resource/Email Whitelist Generator Instructions.htm" target="_blank">Receiving email notifications</a></small></td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                  </table>
                </td>
                <td>&nbsp;</td>
                <td id="Td_process_improvement" runat="server" style="border-left:2px dashed sandybrown; border-top:2px dashed sandybrown;" valign="top">
                  <table bordercolor="#dcdcdc" cellspacing="0" cellpadding="0" border="0">
                    <tr>
                      <td>
                        <table cellspacing="0" cellpadding="5" border="0">
                          <tr><td><small><strong><a name="ProcessImprovement"></a>Process improvement </strong></small></td></tr>
                          <tr><td><small>You can help us make this application better!</small></td></tr>
                          <tr><td><small>Send suggestions <a href="mailto:feedback@frompaper2web.com?subject=ConEdLink%20suggestion">here</a>.</small></td></tr>
                          <tr id="TableRow_bounty_program" runat="server" visible="false">
                            <td><small><asp:HyperLink ID="HyperLink_bounty_program" runat="server" NavigateUrl="~/protected/bounty_program.aspx" Target="_blank">Make money as a bounty hunter.</asp:HyperLink></small></td>
                          </tr>
                          <tr><td><small><strong>Thanks!</strong></small></td></tr>
                        </table>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
            <ajaxToolkit:DropShadowExtender ID="DropShadowExtender_reference_material" runat="server" TargetControlID="Td_reference_material" />
            <ajaxToolkit:DropShadowExtender ID="DropShadowExtender_process_improvement" runat="server" TargetControlID="Td_process_improvement" />
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
