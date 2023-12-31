using Class_biz_accounts;
using System;
using System.Configuration;

namespace regional_staffer_overview
{
    public partial class TWebForm_regional_staffer_overview: ki_web_ui.page_class
    {

        // / <summary>
        // / Required method for Designer support -- do not modify
        // / the contents of this method with the code editor.
        // / </summary>
        private void InitializeComponent()
        {
        }

        protected void Page_Load(object sender, System.EventArgs e)
        {
            Title = Server.HtmlEncode(ConfigurationManager.AppSettings["application_name"]) + " - regional_staffer_overview";
            if (!IsPostBack)
            {
                BeginBreadCrumbTrail();
                if (new TClass_biz_accounts().BeStalePassword(user_kind:"regional_staffer",user_id:Session["regional_staffer_user_id"].ToString()))
                  {
                  DropCrumbAndTransferTo("change_password.aspx");
                  }
            }
//
//ScriptManager.GetCurrent(Page).EnablePartialRendering = false;
//
        }

        protected override void OnInit(EventArgs e)
        {
            // Required for Designer support
            InitializeComponent();
            base.OnInit(e);
            //
            // When NullReferenceException happens during a Page_Load and the Session is empty, it's because this kind of logic is being checked too late, in the Page_Load, rather than in the OnInit.
            //
            if ((Session["regional_staffer_name"] == null) || (Session["regional_staffer_user_id"] == null) || Session["imitator_designator"] != null)
              {
              Session.Clear();
              DropCrumbAndTransferTo("~/login.aspx");
              }
        }

    } // end TWebForm_regional_staffer_overview

}
