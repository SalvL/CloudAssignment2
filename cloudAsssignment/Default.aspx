<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="cloudAsssignment._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-8">
            <h4>User account log in.</h4>
                   
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">User name</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                CssClass="text-danger" ErrorMessage="The user name field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />
                        </div>
                    </div>
            
           

        </div>
        <div class="col-md-8">
            <h2>Register</h2>
            <p>
                If you don't have an account.
            </p>
             
            <asp:ValidationSummary runat="server" CssClass="text-danger" />
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">User name</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                        CssClass="text-danger" ErrorMessage="The user name field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox ID="Email" runat="server" CssClass="form-control"/> 

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email"
                        ErrorMessage="Not a Valid Email Address" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ValidationGroup="CreateUserWizard1">

                    </asp:RegularExpressionValidator>

                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                        ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">

                    </asp:RequiredFieldValidator>
                </div>
                </div>
            
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="TextBox2" TextMode="Password" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                        CssClass="text-danger" ErrorMessage="The password field is required." />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
                </div>
            </div>


       


            
        </div>
       
    </div>

</asp:Content>
