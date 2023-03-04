<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SportsToolsManagement.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FunSports | Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <nav class="navbar bg-white">
        <div class="container-fluid">
            <h3 class="navbar-brand ml-5 pl-3">FunSports</h3>
            <div class="d-flex">
                <asp:HyperLink runat="server" class="text-decoration-none text-secondary nav-link mr-5 pr-4" NavigateUrl="~/index.aspx">Home</asp:HyperLink>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row justify-content-center mt-4">
            <div class="col-md-12 col-lg-10">
                <div class="wrap d-md-flex">
                    <div class="img" style="background-image: url(images/login.jpg);">
                    </div>
                    <div class="login-wrap p-4 p-md-5">
                        <div class="d-flex">
                            <div class="w-100">
                                <h3 class="mb-4 border-bottom">FunSports Sign In</h3>
                            </div>
                        </div>
                        <form runat="server" class="signin-form">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="All field must be filled" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="validationfirstname" runat="server" ControlToValidate="txtUsername" ErrorMessage="Invalid Username" ValidationExpression="[a-zA-Z][a-zA-Z]{2,}" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RegularExpressionValidator>
                            <div class="form-group mb-3">
                                <label class="label" for="name">Username</label>
                                <asp:TextBox placeholder="Username" ID="txtUsername" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPassword" ErrorMessage="All field must be filled" Display="Dynamic" ForeColor="OrangeRed" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
                            <div class="form-group mb-3">
                                <label class="label" for="password">Password</label>
                                <asp:TextBox TextMode="Password" placeholder="Password" class="form-control" ID="txtPassword" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group d-md-flex">
                                <div class="w-50 text-left">
                                    <label class="checkbox-wrap mb-0">
                                        Remember Me
                                        <asp:CheckBox ID="chkRememberMe" runat="server" Checked="True" />
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <%--<div class="w-50 text-md-right">
                                    <a href="#">Forgot Password</a>
                                </div>--%>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnLogin" class="form-control btn rounded submit px-3" Style="background-color: orangered; color: white;" runat="server" Text="Sign In" OnClick="btnLogin_Click" />
                            </div>
                        </form>
                        <%--<p class="text-center">Not a member? <a data-toggle="tab" href="#signup">Sign Up</a></p>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
