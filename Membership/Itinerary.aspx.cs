﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Membership_Itinerary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ItineraryDataSource_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        // Get a reference to the currently logged on user
        MembershipUser currentUser = Membership.GetUser();

        // Determine the currently logged on user's UserId value
        Guid currentUserId = (Guid)currentUser.ProviderUserKey;

        // Assign the currently logged on user's UserId to the @UserId parameter
        e.Command.Parameters["@UserId"].Value = currentUserId;

       

    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Session["ID"] = (GridView1.DataKeys[e.NewSelectedIndex].Value);
        // Get the datakey of the selected row

        Response.Redirect("~/Membership/ItineraryDetails.aspx");
    }
   
}