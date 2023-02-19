<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="SportsToolsManagement.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>FunSports | Dashboard</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <!-- CSS Files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
</head>
<body class="">
    <div class="wrapper ">
        <div class="sidebar" data-color="orange">
            <div class="logo">
                <asp:HyperLink ID="HyperLink1" class="simple-text logo-mini" runat="server" NavigateUrl="~/dashboard.aspx">FS</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" class="simple-text logo-normal" runat="server" NavigateUrl="~/dashboard.aspx">FunSports</asp:HyperLink>
            </div>
            <div class="sidebar-wrapper" id="sidebar-wrapper">
                <ul class="nav">
                    <li class="active ">
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
                        <asp:HyperLink ID="HyperLink5" class="navbar-brand" runat="server" NavigateUrl="~/dashboard.aspx">Dashboard</asp:HyperLink>
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
            <div class="content">
                <div class="row">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Available tools</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead class=" text-primary">
                                            <td>Tools name
                                            </td>
                                            <td>Tools quantity
                                            </td>
                                            <td>On Rent tools quantity
                                            </td>
                                            <td class="text-right">Remaining tools quantity
                                            </td>
                                        </thead>
                                        <tbody>
                                            <%for (int i = 0; i <= T_name.Count - 1; i++)
                                                { %>
                                            <tr>
                                                <td><%Response.Write(T_name[i]); %>
                                                </td>
                                                <td><%Response.Write(Quantity[i]); %>
                                                </td>
                                                <td><%Response.Write(Rent[i]); %>
                                                </td>
                                                <td class="text-right"><%Response.Write(Remaining[i]); %>
                                                </td>
                                            </tr>
                                            <%} %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Currently not available tools</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead class=" text-primary">
                                            <td>Tools name
                                            </td>
                                            <td>Tools quantity
                                            </td>
                                            <td>On Rent tools quantity
                                            </td>
                                            <td class="text-right">Remaining tools quantity
                                            </td>
                                        </thead>
                                        <tbody>
                                            <%for (int i = 0; i <= NT_name.Count - 1; i++)
                                                { %>
                                            <tr>
                                                <td><%Response.Write(NT_name[i]); %>
                                                </td>
                                                <td><%Response.Write(NQuantity[i]); %>
                                                </td>
                                                <td><%Response.Write(NRent[i]); %>
                                                </td>
                                                <td class="text-right"><%Response.Write(NRemaining[i]); %>
                                                </td>
                                            </tr>
                                            <%} %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="footer">
                <div class="container-fluid ">
                    <nav>
                        <ul>
                            <li>
                                <asp:HyperLink ID="HyperLink7" runat="server">FunSports</asp:HyperLink>
                            </li>
                        </ul>
                    </nav>
                    <div class="copyright" id="copyright">
                        &copy;
                        <script>
                            document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear()))
                        </script>
                        , Designed by
                        <asp:HyperLink ID="HyperLink8" runat="server" Target="_blank" NavigateUrl="~/dashboard.aspx">Sahil Ladola</asp:HyperLink>
                        & Coded by
                        <asp:HyperLink ID="HyperLink9" runat="server" Target="_blank" NavigateUrl="~/dashboard.aspx">Sahil Ladola</asp:HyperLink>.
                    </div>
                </div>
            </footer>
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
