<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="SportsToolsManagement.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>FunSports | Customer Registration</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <!-- CSS Files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
</head>
<body class="user-profile">
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
                    <li class="active">
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
                        <asp:HyperLink ID="HyperLink5" class="navbar-brand" runat="server" NavigateUrl="~/register.aspx">Customer Registration</asp:HyperLink>
                    </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-bar navbar-kebab"></span>
                        <span class="navbar-toggler-bar navbar-kebab"></span>
                        <span class="navbar-toggler-bar navbar-kebab"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        <%--<form runat="server">--%>
                        <%--<div class="input-group no-border">
                                <input type="text" value="" class="form-control" placeholder="Search...">
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                        <i class="now-ui-icons ui-1_zoom-bold"></i>
                                    </div>
                                </div>
                            </div>--%>
                        <%--</form>--%>
                        <ul class="navbar-nav">
                            <%--<li class="nav-item">
                                <a class="nav-link" href="#pablo">
                                    <i class="now-ui-icons media-2_sound-wave"></i>
                                    <p>
                                        <span class="d-lg-none d-md-block">Stats</span>
                                    </p>
                                </a>
                            </li>--%>
                            <li class="nav-item dropdown">
                                <asp:HyperLink class="nav-link dropdown-toggle" ID="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" runat="server">
                                    <i class="now-ui-icons users_single-02"></i>
                                    <p><span class="d-lg-none d-md-block"></span></p>
                                </asp:HyperLink>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                    <asp:HyperLink class="dropdown-item" ID="HyperLink6" runat="server" NavigateUrl="~/logout.aspx">Logout</asp:HyperLink>
                                    <%--<a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>--%>
                                </div>
                            </li>
                            <%--<li class="nav-item">
                                <a class="nav-link" href="#pablo">
                                    <i class="now-ui-icons "></i>
                                    <p>
                                        <span class="d-lg-none d-md-block">Account</span>
                                    </p>
                                </a>
                            </li>--%>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
            <div class="panel-header panel-header-sm">
            </div>
            <div class="content">
                <div class="row">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="title">Registration</h5>
                            </div>
                            <div class="card-body">
                                <form runat="server">
                                    <div class="row">
                                        <div class="col-md-6 pr-1">
                                            <div class="form-group">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="All field must be filled" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="validationfirstname" runat="server" ControlToValidate="txtFname" ErrorMessage="Invalid First name" ValidationExpression="[a-zA-Z][a-zA-Z]{2,}" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        <div class="col-md-6 pl-1">
                                            <div class="form-group">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="All field must be filled" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtLname" ErrorMessage="Invalid Last name" ValidationExpression="[a-zA-Z][a-zA-Z]{2,}" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 pr-1">
                                            <div class="form-group">
                                                <label>First Name</label>
                                                <asp:TextBox ID="txtFname" class="form-control" placeholder="First Name" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6 pl-1">
                                            <div class="form-group">
                                                <label>Last Name</label>
                                                <asp:TextBox ID="txtLname" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage="All field must be filled" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Address</label>
                                                <asp:TextBox ID="txtAddress" class="form-control" placeholder="Home Address" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4 pr-1">
                                            <div class="form-group">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLandmark" ErrorMessage="All field must be filled" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLandmark" ErrorMessage="Invalid Landmark" ValidationExpression="[a-zA-Z ][a-zA-Z ]{2,}" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        <div class="col-md-4 px-1">
                                            <div class="form-group">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtArea" ErrorMessage="All field must be filled" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtArea" ErrorMessage="Invalid Area" ValidationExpression="[a-zA-Z][a-zA-Z ]{2,}" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        <div class="col-md-4 pl-1">
                                            <div class="form-group">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPostalCode" ErrorMessage="All field must be filled" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="validationPincode" runat="server" ControlToValidate="txtPostalCode" ErrorMessage="Invalid Pincode" ValidationExpression="[0-9]{6}" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4 pr-1">
                                            <div class="form-group">
                                                <label>Landmark</label>
                                                <asp:TextBox ID="txtLandmark" class="form-control" placeholder="Landmark" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4 px-1">
                                            <div class="form-group">
                                                <label>Area</label>
                                                <asp:TextBox ID="txtArea" class="form-control" placeholder="Area" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4 pl-1">
                                            <div class="form-group">
                                                <label>Postal Code</label>
                                                <asp:TextBox ID="txtPostalCode" class="form-control" placeholder="Postal Code" runat="server" MaxLength="6"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3 pr-1">
                                        </div>
                                        <div class="col-md-4 px-1">
                                            <div class="form-group">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMobileNum" ErrorMessage="All field must be filled" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtMobileNum" ErrorMessage="Invalid Contact number" Display="Dynamic" ValidationExpression="[6789][0-9]{9}" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        <div class="col-md-5 pl-1">
                                            <div class="form-group">
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email address" ValidationExpression="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RegularExpressionValidator>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtEmail" ErrorMessage="All field must be filled" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3 pr-1">
                                            <div class="form-group">
                                                <label for="gender">Select Gender</label>
                                                <asp:DropDownList ID="gender" class="form-control" runat="server" OnSelectedIndexChanged="gender_SelectedIndexChanged">
                                                    <asp:ListItem>Male</asp:ListItem>
                                                    <asp:ListItem>Female</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-4 px-1">
                                            <div class="form-group">
                                                <label>Contact No.</label>
                                                <asp:TextBox ID="txtMobileNum" class="form-control" placeholder="Contact No." MaxLength="10" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-5 pl-1">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email address</label>
                                                <asp:TextBox ID="txtEmail" class="form-control" placeholder="Email" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:Button ID="btnRegister" class="btn btn-primary btn-round" runat="server" Text="Register" OnClick="btnRegister_Click" />
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <%--<div class="col-md-4">
                        <div class="card card-user">
                            <div class="image">
                                <img src="../assets/img/bg5.jpg" alt="...">
                            </div>
                            <div class="card-body">
                                <div class="author">
                                    <a href="#">
                                        <img class="avatar border-gray" src="../assets/img/mike.jpg" alt="...">
                                        <h5 class="title">Mike Andrew</h5>
                                    </a>
                                    <p class="description">
                                        michael24
                                    </p>
                                </div>
                                <p class="description text-center">
                                    "Lamborghini Mercy
                                    <br>
                                    Your chick she so thirsty
                                    <br>
                                    I'm in that two seat Lambo"
                                </p>
                            </div>
                            <hr>
                            <div class="button-container">
                                <button href="#" class="btn btn-neutral btn-icon btn-round btn-lg">
                                    <i class="fab fa-facebook-f"></i>
                                </button>
                                <button href="#" class="btn btn-neutral btn-icon btn-round btn-lg">
                                    <i class="fab fa-twitter"></i>
                                </button>
                                <button href="#" class="btn btn-neutral btn-icon btn-round btn-lg">
                                    <i class="fab fa-google-plus-g"></i>
                                </button>
                            </div>
                        </div>
                    </div>--%>
                </div>
            </div>
            <footer class="footer">
                <div class="container-fluid ">
                    <nav>
                        <ul>
                            <li>
                                <asp:HyperLink ID="HyperLink7" runat="server">FunSports</asp:HyperLink>
                            </li>
                            <%--<li>
                                <a href="http://presentation.creative-tim.com">About Us
                                </a>
                            </li>--%>
                            <%--<li>
                                <a href="http://blog.creative-tim.com">Blog
                                </a>
                            </li>--%>
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
