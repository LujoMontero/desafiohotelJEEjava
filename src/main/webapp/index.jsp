<%@ page import="java.util.List"%>
<%@ page import="org.example.desafiojeejavaserverpagesii.business.HabitacionBusiness" %>
<%@ page import="org.example.desafiojeejavaserverpagesii.model.Habitacion" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Librerias Requeridas
    HabitacionBusiness habitacion2 = new HabitacionBusiness();
// listado de Evento
    List<Habitacion> listaHabitaciones = habitacion2.getHabitaciones();
%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="assets/html/head.jsp"%>
</head>
<body>
<%@include file="assets/html/header.jsp"%>
<form method="post" action="procesa.jsp">
    <!-- Section-->
    <section class="py-5">
        <div class="container px-4 px-lg-5 mt-5">
            <div class="row justify-content-center">
                <h1>
                    Habitaciones Disponibles
                    (<%=listaHabitaciones.size()%>)
                </h1>
                <hr/>
            </div>
            <div
                    class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3
row-cols-xl-4 justify-content-center">
                    <%
 for (int x = 0; x < listaHabitaciones.size(); x++) {
 %>
                <div class="col mb-5">
                    <div class="card h-100">
                        <img class="card-img-top"

                             src="<%=listaHabitaciones.get(x).getImagen()%>"

                             alt="<%=listaHabitaciones.get(x).getNombre()%>" />
                        <div class="card-body p-4">
                            <div class="text-center">
                                <h5 class="fwbolder"><%=listaHabitaciones.get(x).getNombre()%></h5>

                                <p><%=listaHabitaciones.get(x).getDescripcion()%></p>
                                CL$

                                <%=listaHabitaciones.get(x).getPrecio()%>
                            </div>
                        </div>
                        <input type="radio" id="html"
                               name="idhabitacion"

                               value="<%=listaHabitaciones.get(x).getId()%>" checked>
                        <div class="card-footer p-4 pt-0
border-top-0 bg-transparent">
                            <div class="text-center">
                                <a class="btn btnoutline-dark mt-auto"

                                   href="detalle.jsp?idevento=<%=listaHabitaciones.get(x).getId()%>">Ver
                                    Detalle Evento</a>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </section>
    <!-- Formulario -->
    <section>
        <div class="container px-4 px-lg-5 mt-5">
            <h1>Informacion de Reserva Habitacion</h1>
            <hr />
            <div class="row g-3">
                <div class="col-md-6">
                    <label for="nombre" class="formlabel">Nombre</label> <input
                        type="text" class="form-control"
                        id="nombre" name="nombre"
                        value="Marcelo">
                </div>
                <div class="col-md-6">
                    <label for="apellido" class="formlabel">Apellido</label> <input
                        type="text" class="form-control"
                        id="apellido" name="apellido"
                        value="Salas Melinao">
                </div>
                <div class="col-md-6">
                    <label for="email" class="formlabel">email</label> <input
                        type="text" class="form-control"
                        id="email" name="email"
                        value="correo@...com">
                </div>
                <div class="col-md-2">
                    <label for="medio_pago" class="formlabel">Medio de Pago</label>
                    <select id="medio_pago" name="medio_pago" class="form-select">
                        <option value="Efectivo">Efectivo</option>
                        <option value="Debito">Debito</option>
                        <option value="Credito">Credito</option>
                    </select>
                </div>

                <div class="col-md-4">
                    <label for="dias" class="formlabel">Dias</label>
                    <select id="dias" name="dias" class="form-select">
                        <% for (int x = 0; x < 30; x++) {%>
                        <option value="<%=x + 1%>"><%=x + 1%> Dia(s) </option>
                        <%
                            }
                        %>
                    </select>
                </div>
                <div class="col-md-2">
                    <label for="fecha_entrada" class="formlabel">Fecha Entrada</label>
                    <input type="date" id="fecha_entrada" name="fecha_entrada" class="form-control" value="n">
                </div>
                <div class="col-12">
                    <hr />
                    <button type="submit" class="btn btn-primary">Enviar
                        Solicitud de Compra</button>
                </div>
            </div>
        </div>
    </section>
    <br /> <br />
</form>
<%@include file="assets/html/footer.jsp"%>
</body>
</html>