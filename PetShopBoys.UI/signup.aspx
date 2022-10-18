<%@ Page Title="" Language="C#" MasterPageFile="~/PetShopBoys.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="PetShopBoys.UI.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
      <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="img/standarduser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Nuevo usuario</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label for="txtNombre" class="form-label">Nombre</label>
                        <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtNombre" runat="server" placeholder="Pepe"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label for="txtApellido" class="form-label">Apellido</label>
                        <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtApellido" runat="server" placeholder="Grillo"></asp:TextBox>
                        </div>

                     </div>

                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label for="txtMail" class="form-label">E-Mail</label>
                        <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtMail" runat="server" placeholder="pepe@gmail.com" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label for="txtTelefono" class="form-label">Teléfono</label>
                        <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtTelefono" runat="server" placeholder="1133338888" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col-md-4">
                        <label for="drpProvincia" class="form-label">Provincia</label>
                        <div class="mb-3">
                            <asp:DropDownList class="form-control" ID="drpProvincia" runat="server">
                               <asp:ListItem Text="Seleccionar" Value="select"></asp:ListItem>
                                <asp:ListItem Text="CABA" Value="CABA"></asp:ListItem>
                                <asp:ListItem Text="Buenos Aires" Value="Buenos Aires"></asp:ListItem>
                                <asp:ListItem Text="Córdoba" Value="Cordoba"></asp:ListItem>
                                <asp:ListItem Text="Santa Fe" Value="Santa Fe"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label for="txtLocalidad" class="form-label">Localidad</label>
                        <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtLocalidad" runat="server" placeholder="Localidad"></asp:TextBox>
                        </div>

                     </div>
                     <div class="col-md-4">
                        <label for="txtCodPostal" class="form-label">Código Postal</label>
                        <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtCodPostal" runat="server" placeholder="Código Postal" TextMode="Number"></asp:TextBox>
                        </div>

                     </div>


                  </div>

                  <div class="row">
                     <div class="col">
                        <label for="txtDireccion" class="form-label">Dirección</label>
                        <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtDireccion" runat="server" placeholder="Dirección" TextMode="Multiline" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                         <center><span class="badge rounded-pill text-bg-primary">Ingresá tus nuevas credenciales</span></center>
                     </div>
                  </div>


                  <div class="row">
                     <div class="col-md-6">
                        <label for="txtUsuario" class="form-label">Nombre de usuario</label>
                        <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtUsuario" runat="server" placeholder="Nombre de usuario"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label for="txtPassword" class="form-label">Contraseña</label>
                        <div class="mb-3">
                           <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>


                  <div class="row">
                     <div class="col">
                        <div class="d-grid mb-3">
                            <asp:Button class="btn btn-success btn-lg w-100 d-block" ID="btnSignup" runat="server" Text="Registrarse" OnClick="btnSignup_Click" />
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
