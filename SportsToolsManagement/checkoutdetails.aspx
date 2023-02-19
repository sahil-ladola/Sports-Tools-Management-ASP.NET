<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkoutdetails.aspx.cs" Inherits="SportsToolsManagement.checkoutdetails" %>

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
            <div class="content">
                <div class="row mt-3">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Check-Out Details</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead class=" text-primary">
                                            <th>Email
                                            </th>
                                            <th>Tools name
                                            </th>
                                            <th>Available quantity
                                            </th>
                                            <th class="text-right">Quantity needed
                                            </th>
                                        </thead>
                                        <tbody>
                                            <form runat="server">
                                                <tr>
                                                    <td><%Response.Write(Session["searchemail"]); %>
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ToolsName" class="form-control" runat="server" OnSelectedIndexChanged="ToolsName_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="quantity" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtneedquan" class="form-control" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Button ID="btnsubmit" class="btn btn-primary btn-round" runat="server" Text="Submit" OnClick="btnsubmit_Click" /></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtneedquan" ErrorMessage="Field must be filled" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtneedquan" ErrorMessage="Invalid Quantity" Display="Dynamic" ValidationExpression="\d+" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RegularExpressionValidator>
                                                    </td>
                                                </tr>
                                            </form>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</body>
</html>
