<%@ Page Title="" Language="C#" MasterPageFile="~/PetShopBoys.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PetShopBoys.UI.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div class="container">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px" src="img/standarduser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>User Login</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label for="txtUsuario" class="form-label">Usuario</label>
                        <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtUsuario" runat="server" placeholder="Nombre de usuario"></asp:TextBox>
                        </div>
                        <label for="txtPassword" class="form-label">Contraseña</label>
                        <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="d-grid mb-3">
                           <asp:Button class="btn btn-success btn-lg w-100 d-block" ID="btnLogin" runat="server" Text="Iniciar sesión" />
                        </div>
                        <div class="d-grid mb-3">
                           <a href="signup.aspx"><input class="btn btn-info btn-lg w-100" id="btnSignup" type="button" value="Registrarse"/></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="home.aspx"><< Volver a la página principal</a><br><br>
         </div>
      </div>
    </div>
</asp:Content>
