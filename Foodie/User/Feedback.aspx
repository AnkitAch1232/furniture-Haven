<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Furniture_haven.User.Contact" %>

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

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- book section -->
    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label runat="server" ID="lblMsg"></asp:Label>
                </div>
                <h2>Send Your Feedback</h2>
            </div>
            <div class="col-md-6">
                <div class="form_container">
                    <div>
                        <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Your Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name is required"
                            ControlToValidate="txtName" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required"
                            ControlToValidate="txtEmail" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtSubject" runat="server" class="form-control" placeholder="Subject"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="Subject is required"
                            ControlToValidate="txtSubject" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    </div>

                    <div>
                        <asp:TextBox ID="txtMessage" runat="server" class="form-control" placeholder="Enter Your Feedback"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Message is required"
                            ControlToValidate="txtMessage" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    </div>
                    <div class="btn_box">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn_box btn-warning rounded-pill pl-4 pr-4 text-white"
                            OnClick="btnSubmit_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end book section -->

</asp:Content>
