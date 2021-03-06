<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mekashron_View.aspx.cs" Inherits="Mekashron_Techical_Test.Mekashron_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mekashron</title>
    <link href="CSS/Mekashron_Style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="Scripts/Mekashron_script.js"></script>
</head>
<body>
    <header class="header">
        <nav class="navbar navbar-style">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menubar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="JavaScript: location.reload(true)">
                        <img class="logo" src="Images/Mekashron_Logo.png" /></a>
                </div>
                <div class="collapse navbar-collapse" id="menubar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="JavaScript: location.reload(true)">HOME</a></li>
                        <li><a href="JavaScript: location.reload(true)">PRODUCTS </a></li>
                        <li><a href="JavaScript: location.reload(true)">ABOUT </a></li>
                        <li><a href="JavaScript: location.reload(true)">CONTACT US </a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <section class="Form" id="sec_Login">
        <div class="container" style="margin-top: 5%; margin-bottom: 3%">
            <div class="row no-gutters">
                <div class="col-lg-3"></div>
                <div class="col-lg-7" style="padding: 5%">
                    <h4 class="font-weight-bold">Sign into your account</h4>
                    <div class="alert alert-danger" role="alert" id="CredentialsNotMatch" style="display: none;">The Email adress or Password you entered is incorrect!</div>
                    <form>
                        <div class="form-group">
                            <div class="col-lg-7">
                                <input type="email" id="txt_UserID" placeholder="Email-Adress" class="form-control" style="margin: 3%; padding: 3%;" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-7">
                                <input type="password" id="txt_Password" placeholder="******" class="form-control" style="margin: 3%; padding: 3%;" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-7">
                                <button type="button" class="btnLogin" id="btn_login" runat="server" onclick="logintoMyAccount();" style="margin: 3%; padding: 3%;">Login</button>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-7">
                                <p style="margin: 3%; padding: 3%;">Don't have an account? <a href="#" onclick="DisplayRegistrationForm();">Register here</a></p>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </section>

    <div class="Form" id="sec_Viewdetails" hidden="hidden">
        <div class="container" style="margin-top: 5%; margin-bottom: 3%">
            <div class="row no-gutters">

                <div class="col-lg-12" style="padding: 2%">
                    <h4 class="font-weight-bold" style="padding: 1%">MY account</h4>
                    <form>
                        <div class="form-row">
                            <div class="alert alert-success" id="loginSuccess" role="alert" style="display: none;">Log In Suceess</div>
                        </div>
                    </form>
                    <form>
                        <div class="form-row">
                            <div class="col-lg-4">
                                <label>Entity ID</label>
                                <input type="text" id="tx_EntityId" class="form-control" readonly />
                            </div>
                            <div class="col-lg-4">
                                <label>First Name</label>
                                <input type="text" id="txt_My_firstname" class="form-control" readonly />
                            </div>
                            <div class="col-lg-4">
                                <label>Last Name</label>
                                <input type="text" id="txt_My_lastname" class="form-control" readonly />
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-12" style="padding: 2%">
                    <form>
                        <div class="form-row">
                            <div class="col-lg-4">
                                <label>Email</label>
                                <input type="text" id="txt_myEmail" class="form-control" readonly />
                            </div>
                            <div class="col-lg-4">
                                <label>Mobile</label>
                                <input type="text" id="txt_myMobile" class="form-control" readonly />
                            </div>
                            <div class="col-lg-4">
                                <label>Country Code</label>
                                <input type="text" id="txt_CountryCode" class="form-control" readonly />
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-12" style="padding: 2%">
                    <form>
                        <div class="form-row">
                            <div class="col-lg-4">
                                <label>Company</label>
                                <input type="text" txt="txt_Company" class="form-control" readonly />
                            </div>
                            <div class="col-lg-4">
                                <label>Adress</label>
                                <input type="text" txt="txt_myAdress" class="form-control" readonly />
                            </div>
                            <div class="col-lg-4">
                                <label>City</label>
                                <input type="text" id="txt_myCity" class="form-control" readonly />
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-12" style="padding: 2%">
                    <form>
                        <div class="form-row">
                            <div class="col-lg-4">
                                <label>Country</label>
                                <input type="text" id="txt_mycountry" class="form-control" readonly />
                            </div>
                            <div class="col-lg-4">
                                <label>Zip</label>
                                <input type="text" id="txt_myZip" class="form-control" readonly />
                            </div>
                            <div class="col-lg-4">
                                <label>Phone</label>
                                <input type="text" id="txt_myPhone" class="form-control" readonly />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <section class="Form" id="sec_Register" hidden="hidden">
        <div class="container">
            <div class="row no-gutters">
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                    <form class="form-horizontal" id="registrationForm">
                        <h4 class="font-weight-bold text-center">Registration</h4>
                        <div class="form-row">
                            <div class="alert alert-success" id="Registration_Success" role="alert" style="display: none;">Log In Suceess</div>
                            <div class="alert alert-danger" role="alert" id="Registration_error" style="display: none;">The Email Adress or Password you entered is incorrect!</div>
                        </div>
                        <div class="form-group">
                            <label for="firstName" class="col-sm-3 control-label">First Name<span>*</span></label>
                            <div class="col-sm-9">
                                <input type="text" id="firstName" placeholder="First Name" name="firstName" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="lastName" class="col-sm-3 control-label">Last Name<span>*</span></label>
                            <div class="col-sm-9">
                                <input type="text" id="lastName" placeholder="Last Name" class="form-control" name="lastName" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-3 control-label">Email <span>*</span></label>
                            <div class="col-sm-9">
                                <input type="email" id="email" placeholder="Email Address" class="form-control" name="email" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-sm-3 control-label">Password<span>*</span></label>
                            <div class="col-sm-9">
                                <input type="password" id="password" placeholder="Password" class="form-control" name="password" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="phoneNumber" class="col-sm-3 control-label">Phone number <span>*</span></label>
                            <div class="col-sm-9">
                                <input type="text" id="phoneNumber" placeholder="Phone number" class="form-control" name="phoneNumber" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="countryID" class="col-sm-3 control-label">Country ID <span>*</span></label>
                            <div class="col-sm-9">
                                <input type="text" id="countryID" placeholder="Country ID" class="form-control" name="countryID" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-9 col-sm-offset-3">
                                <button type="button" runat="server" class="btnLogin" id="btn_register" onclick="RegisterMyAccount();">Register</button>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-9 col-sm-offset-3">
                                <p>Have an account? <a href="JavaScript: location.reload(true)">Log In</a></p>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </section>
</body>
</html>
