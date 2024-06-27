<%@ page import="org.example.desafiojeejavaserverpagesii.business.HabitacionBusiness" %>
<%@ page import="org.example.desafiojeejavaserverpagesii.model.Habitacion" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
        // Recepcion valores dede request
    String nombreComprador = request.getParameter("nombre");
    String apellidoComprador = request.getParameter("apellido");
    String emailComprador = request.getParameter("email");
    String medioPagoComprador = request.getParameter("medio_pago");
    int cantidadDias = Integer.parseInt(request.getParameter("dias"));
    String fechaComprador = request.getParameter("fecha_entrada");
    int idhabitacion = Integer.parseInt(request.getParameter("idhabitacion"));

    HabitacionBusiness habitacionb = new HabitacionBusiness();
    Habitacion habitacion = new Habitacion();
    habitacion.setId(idhabitacion);
    habitacion = habitacionb.getHabitacionbyID(habitacion);
    int valorPagar = habitacionb.calculaValorCompra(habitacion.getPrecio(), cantidadDias);
%>
<!DOCTYPE html>
<html lang="es">
<%@include file="assets/html/head.jsp"%>
<body>
<%@include file="assets/html/header.jsp"%>
<form method="post" action="procesa.jsp">
    <!-- Section-->
    <section class="py-5">
        <div class="container px-4 px-lg-5 mt-5">
            <div class="row justify-content-center">
                <h1>
                    Detalle Solictud Habitacion:
                    <strong><%=habitacion.getNombre()%></strong>
                </h1>
                <hr/>
            </div>
        </div>
        <div class="container px-4 px-lg-5 mt-5">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Item</th>
                    <th scope="col">Valor</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Nombre</td>
                    <td><%=nombreComprador%></td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Apellido</td>
                    <td><%=apellidoComprador%></td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Dirección</td>
                    <td><%=emailComprador%></td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td>Medio de Pago</td>
                    <td><%=medioPagoComprador%></td>
                </tr>
                <tr>
                    <th scope="row">5</th>
                    <td>Dias</td>
                    <td><%=cantidadDias%></td>
                </tr>
                <tr>
                    <th scope="row">6</th>
                    <td>Fecha Entrada</td>
                    <td><%=fechaComprador%></td>
                </tr>
                <tr>
                    <th scope="row">7</th>
                    <td>Valor a Pagar</td>
                    <td><strong>CL$
                        <%=valorPagar%></strong></td>
                </tr>
                </tbody>
            </table>
        </div>
    </section>
    <br /> <br />
</form>
<%@include file="assets/html/footer.jsp"%>
</body>
</html>