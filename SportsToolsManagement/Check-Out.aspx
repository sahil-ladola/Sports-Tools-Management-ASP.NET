<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Check-Out.aspx.cs" Inherits="SportsToolsManagement.Check_Out" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>FunSports | Check-out</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <!-- CSS Files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
</head>
<body>
    <div class="wrapper ">
        <div class="sidebar" data-color="orange">
            <div class="logo">
                <asp:HyperLink ID="HyperLink1" class="simple-text logo-mini" runat="server" NavigateUrl="~/dashboard.aspx">FS</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" class="simple-text logo-normal" runat="server" NavigateUrl="~/dashboard.aspx">FunSports</asp:HyperLink>
            </div>
            <div class="sidebar-wrapper" id="sidebar-wrapper">
                <ul class="nav">
                    <li>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/dashboard.aspx">
                            <i class="now-ui-icons design_app"></i>
                            <p>Dashboard</p>
                        </asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/register.aspx">
                            <i class="now-ui-icons users_single-02"></i>
                            <p>Customer Registration</p>
                        </asp:HyperLink>
                    </li>
                    <li>
                        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Check-in.aspx">
                            <i class="now-ui-icons ui-1_simple-add"></i>
                            <p>Check-In</p>
                        </asp:HyperLink>
                    </li>
                    <li class="active">
                        <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Check-Out.aspx">
                            <i class="now-ui-icons ui-1_simple-delete"></i>
                            <p>Check-Out</p>
                        </asp:HyperLink>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-panel" id="main-panel">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg navbar-transparent bg-primary navbar-absolute">
                <div class="container-fluid">
                    <div class="navbar-wrapper">
                        <div class="navbar-toggle">
                            <button type="button" class="navbar-toggler">
                                <span class="navbar-toggler-bar bar1"></span>
                                <span class="navbar-toggler-bar bar2"></span>
                                <span class="navbar-toggler-bar bar3"></span>
                            </button>
                        </div>
                        <asp:HyperLink ID="HyperLink5" class="navbar-brand" runat="server" NavigateUrl="~/Check-Out.aspx">Check-Out</asp:HyperLink>
                    </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-bar navbar-kebab"></span>
                        <span class="navbar-toggler-bar navbar-kebab"></span>
                        <span class="navbar-toggler-bar navbar-kebab"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <asp:HyperLink class="nav-link dropdown-toggle" ID="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" runat="server">
                                    <i class="now-ui-icons users_single-02"></i>
                                    <p><span class="d-lg-none d-md-block"></span></p>
                                </asp:HyperLink>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                    <asp:HyperLink class="dropdown-item" ID="HyperLink6" runat="server" NavigateUrl="~/logout.aspx">Logout</asp:HyperLink>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
            <div class="panel-header panel-header-sm">
            </div>
            <nav class="navbar navbar-expand-lg bg-primary">
                <div class="container">
                    <div class="navbar-translate">
                        <form runat="server" class="form-inline ml-auto">
                            <div class="form-group no-border">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtsearch" ErrorMessage="Invalid Email address" ValidationExpression="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtsearch" ErrorMessage="All field must be filled" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtsearch" runat="server" class="form-control" placeholder="Search" ForeColor="Black"></asp:TextBox>
                            </div>
                            <button type="submit" class="btn btn-neutral btn-icon btn-round">
                                <asp:ImageButton ID="Search" class="now-ui-icons ui-1_zoom-bold" runat="server" OnClick="Search_Click" />
                            </button>
                        </form>

                    </div>
                </div>
            </nav>
            <div class="content">
                <div class="row mt-3">
                    <div class="col-md-12">
                        <div class="card card-plain">
                            <div class="card-header">
                                <h4 class="card-title">Customer Details</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead class="text-primary">
                                            <td>First name
                                            </td>
                                            <td>Last name
                                            </td>
                                            <td>Address
                                            </td>
                                            <td>Landmark
                                            </td>
                                            <td>Area
                                            </td>
                                            <td>Postal code
                                            </td>
                                            <td>Gender
                                            </td>
                                            <td>Contact No.
                                            </td>
                                            <td>Email
                                            </td>
                                            <td>Action
                                            </td>
                                        </thead>
                                        <tbody>
                                            <% if (fname.Count == 0)
                                                { %>
                                            <tr>
                                                <td colspan="9">No data Available</td>
                                            </tr>
                                            <%}
                                                else
                                                {
                                                    for (int i = 0; i <= fname.Count - 1; i++)
                                                    {
                                            %>
                                            <tr>
                                                <td><%Response.Write(fname[i]); %></td>
                                                <td><%Response.Write(lname[i]); %></td>
                                                <td><%Response.Write(address[i]); %></td>
                                                <td><%Response.Write(landmark[i]); %></td>
                                                <td><%Response.Write(area[i]); %></td>
                                                <td><%Response.Write(postalcode[i]); %></td>
                                                <td><%Response.Write(gender[i]); %></td>
                                                <td><%Response.Write(contactno[i]); %></td>
                                                <td><%Response.Write(txtsearch.Text); %></td>
                                                <td>
                                                    <asp:HyperLink ID="HyperLink7" runat="server" class="text-decoration-none text-info" NavigateUrl="~/checkoutdetails.aspx">Select</asp:HyperLink></td>
                                            </tr>
                                            <%}
                                                }%>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--   Core JS Files   -->
    <script src="../assets/js/core/jquery.min.js"></script>
    <script src="../assets/js/core/popper.min.js"></script>
    <script src="../assets/js/core/bootstrap.min.js"></script>
    <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
    <!--  Notifications Plugin    -->
    <script src="../assets/js/plugins/bootstrap-notify.js"></script>
    <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="../assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script>
</body>
</html>

