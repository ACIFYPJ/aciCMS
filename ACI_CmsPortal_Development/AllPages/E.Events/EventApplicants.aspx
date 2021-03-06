﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AllMasterPages/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="EventApplicants.aspx.cs" Inherits="ACI_CmsPortal_Development.AllPages.E.Events.EventApplicants" %>

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
            <h1>Manage All Events Applicants</h1>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-body">
            <asp:Repeater ID="EventRPT" runat="server" OnItemCommand="EventRPT_ItemCommand">
                <HeaderTemplate>
                    <table id="event" class="table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th scope="col" style="width: 200px">Event Title
                                </th>
                                <th scope="col" style="width: 200px">Name
                                </th>
                                <th scope="col" style="width: 250px">Handphone
                                </th>
                                <th scope="col" style="width: 300px">Email
                                </th>
                                <th scope="col" style="width: 250px">NRIC
                                </th>
                                <th scope="col" style="width: 300px">Date Of Birth
                                </th>
                                <th scope="col" style="width: 100px"></th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="lbTitle" runat="server" Text='<%# System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(Eval("Title").ToString(),true) %>' />
                        </td>
                        <td>
                            <asp:Label ID="lbName" runat="server" Text='<%# System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(Eval("Name").ToString(),true) %>' />
                        </td>
                        <td>
                            <asp:Label ID="lbHandphone" runat="server" Text='<%# System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(Eval("Handphone").ToString(),true) %>' />
                        </td>
                        <td>
                            <asp:Label ID="lbEmail" runat="server" Text='<%# System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(Eval("Email").ToString(),true) %>' />
                        </td>
                        <td>
                            <asp:Label ID="lbNRIC" runat="server" Text='<%# System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(Eval("NRIC").ToString(),true) %>' />
                        </td>
                        <td>
                            <asp:Label ID="lbDOB" runat="server" Text='<%# System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(((DateTime)Eval("DateOfBirth")).ToString("dd-MMMM-yyyy"),true) %>' />
                        </td>
                        <td>
                            <asp:Button ID="BtnView" CssClass="btn btn-primary" Width="80px" CommandName="ViewApplicant" CommandArgument='<%# System.Web.Security.AntiXss.AntiXssEncoder.HtmlEncode(Eval("RegistrationID").ToString(),true) %>' runat="server" Text="View" />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
           <tfoot>
               <tr>
                   <th scope="col" style="width: 200px">Event Title
                   </th>
                   <th scope="col" style="width: 200px">Name
                   </th>
                   <th scope="col" style="width: 250px">Handphone
                   </th>
                   <th scope="col" style="width: 300px">Email
                   </th>
                   <th scope="col" style="width: 250px">NRIC
                   </th>
                   <th scope="col" style="width: 300px">Date Of Birth
                   </th>
                   <th scope="col" style="width: 100px"></th>
               </tr>
           </tfoot>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>




    <script type="text/javascript">
        function ShowPopup() {
            $("#btnShowPopup").click();
        }
    </script>
    <button type="button" style="display: none;" id="btnShowPopup" class="btn btn-primary btn-lg"
        data-toggle="modal" data-target="#myModal">
    </button>
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h3 class="modal-title">Applicant Details</h3>
                </div>
                <div class="modal-body ">
                    <h4>Registration ID:
                        <asp:Label ID="lbVRegistrationID" ForeColor="#0033CC" runat="server"></asp:Label></h4>
                    <h4>Registration Date:
                        <asp:Label ID="lbVRegistrationDate" ForeColor="#0033CC" runat="server" Text=""></asp:Label></h4>
                    <h4>Event Title:
                        <asp:Label ID="lbVEventTitle" ForeColor="#0033CC" runat="server" Text=""></asp:Label></h4>
                    <br />
                    <h4>Name:
                        <asp:Label ID="lbVname" runat="server" ForeColor="#0033CC" Text=""></asp:Label></h4>
                    <h4>Nationality:
                        <asp:Label ID="lbVnationality" runat="server" ForeColor="#0033CC" Text=""></asp:Label></h4>
                    <h4>NRIC/FIN:
                        <asp:Label ID="lbVnric" runat="server" ForeColor="#0033CC" Text=""></asp:Label></h4>
                    <h4>Date Of Birth:
                        <asp:Label ID="lbVdob" runat="server" ForeColor="#0033CC" Text=""></asp:Label></h4>
                    <br />
                    <h4>Highest Education:
                        <asp:Label ID="lbVhighestedu" ForeColor="#0033CC" runat="server" Text=""></asp:Label></h4>
                    <h4>Current Employment:
                        <asp:Label ID="lbVcurrentemploy" ForeColor="#0033CC" runat="server" Text=""></asp:Label></h4>
                    <h4>Referral Source:
                        <asp:Label ID="lbVreferralsource" ForeColor="#0033CC" runat="server" Text=""></asp:Label></h4>
                    <h4>Sign Up Reason:
                        <asp:Label ID="lbVsignupreason" ForeColor="#0033CC" runat="server" Text=""></asp:Label></h4>
                    <br />
                    <h4>Handphone:
                        <asp:Label ID="lbVhandphone" ForeColor="#0033CC" runat="server" Text=""></asp:Label></h4>
                    <h4>Email:
                        <asp:Label ID="lbVemail" ForeColor="#0033CC" runat="server" Text=""></asp:Label></h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
