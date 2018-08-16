using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Xpo;
using System.Collections.Generic;

public partial class _Default : System.Web.UI.Page {
    protected Session session1;

    protected void Page_Init(object sender, EventArgs e) {
        ASPxGridView1.JSProperties["cpCallbackName"] = String.Empty;
    }
    protected void Page_PreRender(object sender, EventArgs e) {
        if(!IsPostBack) {
            Session["DataSource"] = AccessDataSource1;
        }
        if(Session["DataSource"] is AccessDataSource)
            WebChartControl1.DataSource = (AccessDataSource)Session["DataSource"];
        else
            WebChartControl1.DataSource = (List<DataRowView>)Session["DataSource"];
        WebChartControl1.DataBind();
    }
    protected void ASPxGridView1_AfterPerformCallback(object sender, DevExpress.Web.ASPxGridViewAfterPerformCallbackEventArgs e) {
        ASPxGridView1.JSProperties["cpCallbackName"] = e.CallbackName;
    }
    protected void WebChartControl1_CustomCallback(object sender, DevExpress.XtraCharts.Web.CustomCallbackEventArgs e) {
        var list = new List<DataRowView>();
        for(int i = 0; i < ASPxGridView1.VisibleRowCount; i++) {
            if(!ASPxGridView1.IsGroupRow(i))
                list.Add((DataRowView)ASPxGridView1.GetRow(i));
        }
        Session["DataSource"] = list;
        WebChartControl1.DataSource = list;
        WebChartControl1.DataBind();
    }
}
