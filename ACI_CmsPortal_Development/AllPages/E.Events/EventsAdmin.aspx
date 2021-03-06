﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="EventsAdmin.aspx.cs" Inherits="ACI_CmsPortal_Development.AllPages.E.Events.EventsAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../../js/tablejs.js" type="text/javascript"></script>
    <script src="../../js/tablejsbs.js" type="text/javascript"></script>
    <link rel="stylesheet" href="../../css/TableCss.css" />
    <script>
        $(document).ready(function () {
            $('#event').DataTable();
        });
    </script>
    <div class="row">
        <div class="col-sm-12">
            <h1>Manage Events</h1>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <asp:Button ID="BtnEventNew" runat="server" CssClass="btn btn-success" Text="New Event" OnClick="BtnEventNew_Click" />
            <asp:Button ID="BtnViewApplicants" runat="server" CssClass="btn btn-info" Text="View All Applicants" OnClick="btnViewApplicants_Click" />
           
        </div>
        <div class="panel-body">
            <asp:Repeater ID="EventRPT" runat="server" OnItemCommand="EventRpt_ItemCommand">
                <HeaderTemplate>
                    <table id="event" class="table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th scope="col" style="width: 80px">Featured
                                </th>
                                <th scope="col" style="width: 200px">Event Title
                                </th>
                                <th scope="col" style="width: 300px">Location
                                </th>
                                <th scope="col" style="width: 200px">Start Date
                                </th>
                                <th scope="col" style="width: 200px">End Date
                                </th>
                                <th scope="col" style="width: 100px">Registration
                                </th>
                                <th scope="col" style="width: 100px">Status
                                </th>
                                <th scope="col" style="width: 100px"></th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="lbFeatured" runat="server" Text='<%#((int)Eval("HomePageFeatured") == 1) ? "Yes" : "No" %>' />
                        </td>
                        <td>
                            <asp:Label ID="lbEventTitle" runat="server" Text='<%# System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(Eval("EventTitle").ToString(),true) %>' />
                        </td>
                        <td>
                            <asp:Label ID="lbLocation" runat="server" Text='<%# System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(Eval("Location").ToString(), true) %>' />
                        </td>
                        <td>
                            <asp:Label ID="lbStartDate" runat="server" Text='<%# System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(Eval("EventStart").ToString(),true) %>' />
                        </td>
                        <td>
                            <asp:Label ID="lbEndDate" runat="server" Text='<%# System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(Eval("EventEnd").ToString(), true) %>' />
                        </td>
                        <td>
                            <asp:Label ID="lbRegistration" runat="server" Text='<%#((int)Eval("RegistrationStatus") == 1) ? "Yes" : "No" %>' />
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%#((int)Eval("PublishStatus") == 2) ? "Published" : "UnPublished" %>'/>
                        </td>
                        <td>
                            <asp:Button ID="BtnEdit" CssClass="btn btn-primary" Width="100px" CommandName="EditEvent" CommandArgument='<%# System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(Eval("EventID").ToString(),true) %>' runat="server" Text="Edit" />
                            <asp:Button ID="btnDelete" CssClass="btn btn-danger" Width="100px" CommandName="DeleteEvent" CommandArgument='<%# System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(Eval("EventID").ToString(),true) %>' runat="server" Text="Delete" />
                            <asp:Button ID="BtnViewEvent" CssClass="btn btn-info" Width="100px" CommandName="ViewEvent" CommandArgument='<%# System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(Eval("EventID").ToString(),true) %>' runat="server" Text="Applicants" />             
                                                         
                             </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
           <tfoot>
               <tr>
                   <th scope="col" style="width: 80px">Featured
                   </th>
                   <th scope="col" style="width: 200px">Event Title
                   </th>
                   <th scope="col" style="width: 300px">Location
                   </th>
                   <th scope="col" style="width: 200px">Start Date
                   </th>
                   <th scope="col" style="width: 200px">End Date
                   </th>
                   <th scope="col" style="width: 100px">Registration
                   </th>
                   <th scope="col" style="width: 100px">Status
                   </th>
                   <th scope="col" style="width: 100px"></th>
               </tr>
           </tfoot>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>

    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>


</asp:Content>
