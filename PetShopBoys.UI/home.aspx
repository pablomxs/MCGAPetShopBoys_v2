<%@ Page Title="" Language="C#" MasterPageFile="~/PetShopBoys.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="PetShopBoys.UI.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
   <section>
      <img src="img/petshop_bg.jpg" class="img-fluid"/>
   </section>
   <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>¡Bienvenidos a PetShopBoys!</h2>
                  <p><b>Su Tienda de Mascotas Online</b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
                  <img width="150px" src="img/shopicon.png"/>
                  <h4>Venta de Productos</h4>
                  <p class="text-justify">Encontrá en nuestra tienda todos los productos y accesorios que necesitás para tu mascota</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="img/banoicon.png"/>
                  <h4>Servicio de Baño y Peluquería</h4>
                  <p class="text-justify">Ofrecemos servicio de baño, peluquería y tratamientos estéticos con personal capacitado</p>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                  <img width="150px" src="img/transporteicon.png"/>
                  <h4>Transporte de Animales</h4>
                  <p class="text-justify">Transportamos a tu mascota adonde lo necesites dentro del país y te asistimos si necesitás llevarlo a otra parte del mundo</p>
               </center>
            </div>
         </div>
      </div>
   </section>
   <section>
      <img src="img/petshop_footer_bg.jpg" class="img-fluid"/>
   </section>
</asp:Content>
