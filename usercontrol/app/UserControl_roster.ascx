<%@ Control Language="c#" AutoEventWireup="True" Codebehind="UserControl_roster.ascx.cs" Inherits="UserControl_roster.TWebUserControl_roster"%>
<!-- Derived from KiAspdotnetFramework/usercontrol/app/UserControl~template~std.ascx-template -->
<table cellpadding="0" cellspacing="0">
  <tr>
    <td>
      <table border="1" cellpadding="0" cellspacing="0" style="border-color:Gainsboro; border-width:1px">
        <tr>
          <td>
            <table cellpadding="5" cellspacing="0">
              <tr><td colspan="5"><b><asp:Literal ID="Literal_course_title" runat="server"></asp:Literal></b></td></tr>
              <tr>
                <td nowrap="nowrap" valign="top"><b>Location:</b></td>
                <td colspan="7" valign="top"><asp:Literal ID="Literal_location" runat="server"></asp:Literal></td>
              </tr>
              <tr>
                <td nowrap="nowrap" valign="top"><b>Start:</b></td>
                <td nowrap="nowrap" valign="top"><asp:Literal ID="Literal_start" runat="server"></asp:Literal></td>
                <td>&nbsp;</td>
                <td nowrap="nowrap" valign="top"><b>Approved:</b></td>
                <td nowrap="nowrap" valign="top"><asp:Literal ID="Literal_be_approved" runat="server"></asp:Literal></td>
                <td>&nbsp;</td>
                <td nowrap="nowrap" valign="top"><b>Class #:</b></td>
                <td nowrap="nowrap" valign="top"><asp:Literal ID="Literal_class_number" runat="server"></asp:Literal></td>
              </tr>
              <tr>
                <td nowrap="nowrap" valign="top"><b>End:</b></td>
                <td nowrap="nowrap" valign="top"><asp:Literal ID="Literal_end" runat="server"></asp:Literal></td>
                <td>&nbsp;</td>
                <td nowrap="nowrap" valign="top"><b>Length:</b></td>
                <td nowrap="nowrap" valign="top"><asp:Literal ID="Literal_length" runat="server"></asp:Literal></td>
                <td>&nbsp;</td>
                <td colspan="2">
                  <table border="1" bordercolor="Gainsboro" cellpadding="1" cellspacing="0">
                    <tr>
                      <td align="right" bgcolor="Gainsboro"><small><b>Credits</b></small></td>
                      <td align="center"><small><span style="font-family:monospace;">&nbsp;FR&nbsp;</span></small></td>
                      <td align="center"><small><span style="font-family:monospace;">EMT&nbsp;</span></small></td>
                      <td align="center"><small><span style="font-family:monospace;">EMTP</span></small></td>
                      <td align="center"><small><span style="font-family:monospace;">PHRN</span></small></td>
                    </tr>
                    <tr>
                      <td align="right"><small>M/T:</small></td>
                      <td align="right"><small><span style="font-family:monospace;"><asp:Literal ID="Literal_fr_med_trauma_hours" runat="server"></asp:Literal></span></small></td>
                      <td align="right"><small><span style="font-family:monospace;"><asp:Literal ID="Literal_emt_med_trauma_hours" runat="server"></asp:Literal></span></small></td>
                      <td align="right"><small><span style="font-family:monospace;"><asp:Literal ID="Literal_emtp_med_trauma_hours" runat="server"></asp:Literal></span></small></td>
                      <td align="right"><small><span style="font-family:monospace;"><asp:Literal ID="Literal_phrn_med_trauma_hours" runat="server"></asp:Literal></span></small></td>
                    </tr>
                    <tr>
                      <td align="right"><small>Other:</small></td>
                      <td align="right"><small><span style="font-family:monospace;"><asp:Literal ID="Literal_fr_other_hours" runat="server"></asp:Literal></span></small></td>
                      <td align="right"><small><span style="font-family:monospace;"><asp:Literal ID="Literal_emt_other_hours" runat="server"></asp:Literal></span></small></td>
                      <td align="right"><small><span style="font-family:monospace;"><asp:Literal ID="Literal_emtp_other_hours" runat="server"></asp:Literal></span></small></td>
                      <td align="right"><small><span style="font-family:monospace;"><asp:Literal ID="Literal_phrn_other_hours" runat="server"></asp:Literal></span></small></td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr><td>&nbsp;</td></tr>
  <tr>
    <td>
      <table border="1" cellpadding="0" cellspacing="0" style="border-color:Gainsboro; border-width:1px">
        <tr>
          <td>
            <table cellpadding="10" cellspacing="0">
              <tr><td style="background-color:WhiteSmoke"><b>Attendees</b></td></tr>
              <tr id="TableRow_none" runat="server"><td><em>--&nbsp;NONE&nbsp;--</em></td></tr>
              <tr id="TableRow_attendees" runat="server">
                <td valign="top">
                  <asp:DataGrid id="DataGrid_control" runat="server" gridlines="Horizontal" cellpadding="5" autogeneratecolumns="False" allowsorting="True" onsortcommand="DataGrid_control_SortCommand" onitemdatabound="DataGrid_control_ItemDataBound" Font-Size="85%">
                    <Columns>
                      <asp:BoundColumn datafield="last_name" headertext="Last name" sortexpression="last_name%,first_name,middle_initial,practitioner_level.pecking_order,certification_number,birth_date desc" ReadOnly="True"></asp:BoundColumn>
                      <asp:BoundColumn datafield="first_name" headertext="First_name" sortexpression="first_name%,last_name,middle_initial,practitioner_level.pecking_order,certification_number,birth_date desc" ReadOnly="True"></asp:BoundColumn>
                      <asp:BoundColumn datafield="middle_initial" ReadOnly="True"></asp:BoundColumn>
                      <asp:BoundColumn DataField="level" HeaderText="Level" ReadOnly="True" SortExpression="practitioner_level.pecking_order%,last_name,first_name,middle_initial,certification_number,birth_date desc">
                        <ItemStyle Wrap="False" />
                      </asp:BoundColumn>
                      <asp:BoundColumn datafield="certification_number_for_display" headertext="Cert#" sortexpression="certification_number%,last_name,first_name,middle_initial,practitioner_level.pecking_order,birth_date desc" ReadOnly="True"></asp:BoundColumn>
                      <asp:BoundColumn datafield="birth_date" HeaderText="DOB" SortExpression="birth_date%,last_name,first_name,middle_initial,practitioner_level.pecking_order,certification_number" ReadOnly="True"></asp:BoundColumn>
                      <asp:BoundColumn datafield="county_name" HeaderText="County" SortExpression="county_name%,last_name,first_name,middle_initial,practitioner_level.pecking_order,certification_number,birth_date desc" ReadOnly="True"></asp:BoundColumn>
                      <asp:BoundColumn DataField="instructor_hours" ReadOnly="True" HeaderText="InstHrs" SortExpression="instructor_hours%,last_name,first_name,middle_initial,practitioner_level.pecking_order,certification_number,birth_date desc">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Right" Wrap="False" />
                      </asp:BoundColumn>
                      <asp:BoundColumn datafield="practitioner_status_description" ReadOnly="True" Visible="false"></asp:BoundColumn>
                    </Columns>
                    <HeaderStyle backcolor="WhiteSmoke"></HeaderStyle>
                  </asp:DataGrid>
                  <asp:Label ID="Label_noncurrent_practitioner_on_roster" runat="server" Text="*This roster includes at least one non-current practitioner." BackColor="Gold" Font-Bold="True" Font-Italic="True" Font-Size="Small" Visible="False"></asp:Label>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr id="TableRow_eval_summary_head_spacer" runat="server"><td>&nbsp;</td></tr>
  <tr id="TableRow_eval_summary" runat="server">
    <td>
      <table cellspacing="0" cellpadding="0" style="border:1px solid Gainsboro">
        <tr>
	        <td>
	          <table cellspacing="0" cellpadding="10" border="0">
		          <tr><td bgcolor="#f5f5f5"><strong>Evaluation summary</strong></td></tr>
		          <tr>
			          <td>
                  <table cellspacing="0" cellpadding="5" border="0">
                    <tr id="TableRow_ratings_header" runat="server"><td colspan="4"><strong>RATINGS</strong></td></tr>
                    <tr id="TableRow_ratings_body" runat="server">
                      <td></td>
                      <td colspan="2">
                        <table cellpadding="0" cellspacing="0" border="1">
                          <tr>
                            <td>
                              <table cellpadding="5" cellspacing="0">
                                <tr>
                                  <td></td>
                                  <td align="center" valign="bottom"><small><small>P<br />o<br />o<br />r</small></small></td>
                                  <td></td>
                                  <td></td>
                                  <td></td>
                                  <td align="center"><small><small>Ex-<br />cel-<br />lent</small></small></td>
                                  <td></td>
                                </tr>
                                <tr>
                                  <td></td>
                                  <td align="center">1</td>
                                  <td align="center">2</td>
                                  <td align="center">3</td>
                                  <td align="center">4</td>
                                  <td align="center">5</td>
                                  <td></td>
                                </tr>
                                <tr>
                                  <td>Q1</td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_1_rating_1" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_1_rating_2" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_1_rating_3" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_1_rating_4" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_1_rating_5" runat="server"></asp:Literal></td>
                                  <td>Program objectives?</td>
                                </tr>
                                <tr>
                                  <td>Q2</td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_2_rating_1" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_2_rating_2" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_2_rating_3" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_2_rating_4" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_2_rating_5" runat="server"></asp:Literal></td>
                                  <td>Instructional/A-V materials?</td>
                                </tr>
                                <tr>
                                  <td>Q3</td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_3_rating_1" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_3_rating_2" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_3_rating_3" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_3_rating_4" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_3_rating_5" runat="server"></asp:Literal></td>
                                  <td>Facility appropriate/comfortable?</td>
                                </tr>
                                <tr>
                                  <td>Q4</td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_4_rating_1" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_4_rating_2" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_4_rating_3" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_4_rating_4" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_4_rating_5" runat="server"></asp:Literal></td>
                                  <td>Instructor(s) prepared?</td>
                                </tr>
                                <tr>
                                  <td>Q5</td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_5_rating_1" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_5_rating_2" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_5_rating_3" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_5_rating_4" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_5_rating_5" runat="server"></asp:Literal></td>
                                  <td>Overall?</td>
                                </tr>
                                <tr>
                                  <td>Q6</td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_6_rating_1" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_6_rating_2" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_6_rating_3" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_6_rating_4" runat="server"></asp:Literal></td>
                                  <td style="font-family: 'Courier New', Courier, monospace"><asp:Literal ID="Literal_question_6_rating_5" runat="server"></asp:Literal></td>
                                  <td>Adequate Q&A time?</td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                      </td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr><td colspan="4"><strong>INSTRUCTIONAL QUALITY</strong></td></tr>
                    <tr>
                      <td></td>
                      <td valign="top"><font class="">Instructional staff:</font></td>
                      <td style="font-family: 'Courier New', Courier, monospace">
                        <ASP:Literal id="Literal_eval_summary_instructional_staff" runat="server" ></ASP:Literal>
                      </td>
                      <td nowrap="nowrap">
                      </td>
                    </tr>
                    <tr>
                      <td></td>
                      <td valign="top"><font class="">Time appropriately used:</font></td>
                      <td style="font-family: 'Courier New', Courier, monospace">
                        <ASP:Literal id="Literal_eval_summary_time_appropriately_used" runat="server" ></ASP:Literal>
                      </td>
                      <td nowrap="nowrap">
                      </td>
                    </tr>
                    <tr><td colspan="4"><strong>LEARNING ENVIRONMENT</strong></td></tr>
                    <tr>
                      <td></td>
                      <td valign="top"><font class="">Classroom/training site:</font></td>
                      <td style="font-family: 'Courier New', Courier, monospace">
                        <ASP:Literal id="Literal_eval_summary_classroom_training_site" runat="server" ></ASP:Literal>
                      </td>
                      <td nowrap="nowrap">
                      </td>
                    </tr>
                    <tr>
                      <td></td>
                      <td valign="top"><font class="">Equipment/AV:</font></td>
                      <td style="font-family: 'Courier New', Courier, monospace">
                        <ASP:Literal id="Literal_eval_summary_equipment_av" runat="server" ></ASP:Literal>
                      </td>
                      <td nowrap="nowrap">
                      </td>
                    </tr>
                    <tr><td colspan="4"><strong>OTHER</strong></td></tr>
                    <tr>
                      <td></td>
                      <td valign="top"><font class="">Miscellaneous remarks:</font></td>
                      <td style="font-family: 'Courier New', Courier, monospace">
                        <ASP:Literal id="Literal_eval_summary_misc_remarks" runat="server" ></ASP:Literal>
                      </td>
                      <td nowrap="nowrap">
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
