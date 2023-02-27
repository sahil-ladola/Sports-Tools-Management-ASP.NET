<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkindetails.aspx.cs" Inherits="SportsToolsManagement.checkindetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>FunSports | Check-in</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <!-- CSS Files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
</head>
<body>

    <form id="form1" runat="server">

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
                        <li class="active">
                            <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Check-in.aspx">
                            <i class="now-ui-icons ui-1_simple-add"></i>
                            <p>Check-In</p>
                            </asp:HyperLink>
                        </li>
                        <li>
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
                                    <h4 class="card-title">Check-in Details</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="1000px">
                                                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="id" Visible="False">
                                                                <EditItemTemplate>
                                                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("trn_id") %>'></asp:Label>
                                                                </EditItemTemplate>
                                                                <HeaderTemplate>
                                                                    Id
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:Label ID="id" runat="server" Text='<%# Bind("trn_id") %>'></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Email">
                                                                <EditItemTemplate>
                                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                                                                </EditItemTemplate>
                                                                <HeaderTemplate>
                                                                    Email
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Tool name">
                                                                <EditItemTemplate>
                                                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("t_name") %>'></asp:Label>
                                                                </EditItemTemplate>
                                                                <HeaderTemplate>
                                                                    Tool Name
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("t_name") %>'></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Quantity customer have">
                                                                <EditItemTemplate>
                                                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("quantity") %>'></asp:Label>
                                                                </EditItemTemplate>
                                                                <HeaderTemplate>
                                                                    Quantity customer have
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("quantity") %>'></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Return quantity">
                                                                <EditItemTemplate>
                                                                    <asp:TextBox ID="txtreturn" class="form-control" runat="server"></asp:TextBox>
                                                                </EditItemTemplate>
                                                                <HeaderTemplate>
                                                                    Return quantity
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:Label ID="Label7" runat="server" Text="<%# 0 %>"></asp:Label>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:TemplateField HeaderText="Action">
                                                                <EditItemTemplate>
                                                                    <asp:Button ID="Update" class="btn btn-primary btn-round" runat="server" Text="Update" CommandName="Update" />
                                                                    <asp:Button ID="Cancel" class="btn btn-secondary btn-round" runat="server" Text="Cancel" CommandName="Cancel" />
                                                                </EditItemTemplate>
                                                                <ItemTemplate>
                                                                    <asp:Button ID="Edit" class="btn btn-primary btn-round" runat="server" Text="Edit" CommandName="Edit" />
                                                                    <asp:Button ID="Delete" class="btn btn-secondary btn-round" runat="server" Text="Delete" CommandName="Delete" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                        <FooterStyle BackColor="Tan" />
                                                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                                    </asp:GridView>
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
