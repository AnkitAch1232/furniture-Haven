<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Furniture_haven.User.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        /*For disappearing alert message*/
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID %>").style.display = "none";
            }, seconds * 1000);
        };
    </script>
    <style>
        .form-field {
            margin-bottom: 15px; /* Adjust this value for more or less space */
        }

        .btn-box {
            margin-top: 20px; /* Add space above the button */
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="book-section layout_padding" style="background: #808000;">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label runat="server" ID="lblMsg"></asp:Label>
                </div>
                <h2>Login</h2>

            </div>
            <div class="row">

                <div class="col-md-6 d-flex justify-content-center align-items-center">
                    <div class="form_container">
                        <div class="form-field">
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Username is required"
                                ControlToValidate="txtUsername" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                Font-Size="Small">
                            </asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"
                                placeholder="Enter UserName" ToolTip="UserName"></asp:TextBox>

                        </div>

                        <div class="form-field">
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is required"
                                ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                Font-Size="Small">
                            </asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"
                                placeholder="Enter Password" ToolTip="Password" TextMode="Password"></asp:TextBox>

                        </div>
                        <div class="btn-box">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white"
                                OnClick="btnLogin_Click" />
                            <asp:Label ID="lblNotYetUser" runat="server" CssClass="pl-3 text-black-100"
                                Text="New User? <a href='Registration.aspx' class='badge badge-info'>Register here..</a> "></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form_container">
                        <img id="userLogin" src="../Images/login.png" alt="" class="img-thumbnail" />
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
