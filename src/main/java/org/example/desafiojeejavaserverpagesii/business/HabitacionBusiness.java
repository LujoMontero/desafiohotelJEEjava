package org.example.desafiojeejavaserverpagesii.business;

import org.example.desafiojeejavaserverpagesii.model.Habitacion;

import java.util.ArrayList;
import java.util.List;

public class HabitacionBusiness {

    public List<Habitacion> getHabitaciones() {

        // Inicializacion de lista de habitaciones

        ArrayList<Habitacion> habitaciones = new ArrayList<Habitacion>();

        // Info Evento 1
        Habitacion habitacion1 = new Habitacion();
        habitacion1.setId(1);
        habitacion1.setNombre("Habitacion 1, Simple");
        habitacion1.setDescripcion("Habitacion Clasica con cama extragrande,vistas al oceano y balcon");
        habitacion1.setImagen("assets/img/habi1.jpg");
        habitacion1.setPrecio(10000);
        habitacion1.setHabitaciones(2);
        habitacion1.setMetraje(50);

        // Info Evento 2
        Habitacion habitacion2 = new Habitacion();
        habitacion2.setId(2);
        habitacion2.setNombre("Habitacion 1, Simple");
        habitacion2.setDescripcion("Habitacion Clasica con cama extragrande,vistas al oceano y balcon");
        habitacion2.setImagen("assets/img/habi2.jpg");
        habitacion2.setPrecio(10000);
        habitacion2.setHabitaciones(2);
        habitacion2.setMetraje(50);

        // Info Evento 3
        Habitacion habitacion3 = new Habitacion();
        habitacion3.setId(3);
        habitacion3.setNombre("Habitacion 1, Simple");
        habitacion3.setDescripcion("Habitacion Clasica con cama extragrande,vistas al oceano y balcon");
        habitacion3.setImagen("assets/img/habi3.jpg");
        habitacion3.setPrecio(10000);
        habitacion3.setHabitaciones(2);
        habitacion3.setMetraje(50);

        // Info Evento 4
        Habitacion habitacion4 = new Habitacion();
        habitacion4.setId(4);
        habitacion4.setNombre("Habitacion 1, Simple");
        habitacion4.setDescripcion("Habitacion Clasica con cama extragrande,vistas al oceano y balcon");
        habitacion4.setImagen("assets/img/habi4.jpg");
        habitacion4.setPrecio(10000);
        habitacion4.setHabitaciones(2);
        habitacion4.setMetraje(50);

        // Info Evento 5
        Habitacion habitacion5 = new Habitacion();
        habitacion5.setId(5);
        habitacion5.setNombre("Habitacion 1, Simple");
        habitacion5.setDescripcion("Habitacion Clasica con cama extragrande,vistas al oceano y balcon");
        habitacion5.setImagen("assets/img/habi5.jpg");
        habitacion5.setPrecio(10000);
        habitacion5.setHabitaciones(2);
        habitacion5.setMetraje(50);

        // Info Evento 6
        Habitacion habitacion6 = new Habitacion();
        habitacion6.setId(6);
        habitacion6.setNombre("Habitacion 1, Simple");
        habitacion6.setDescripcion("Habitacion Clasica con cama extragrande,vistas al oceano y balcon");
        habitacion6.setImagen("assets/img/habi6.jpg");
        habitacion6.setPrecio(10000);
        habitacion6.setHabitaciones(2);
        habitacion6.setMetraje(50);

        // Info Evento 7
        Habitacion habitacion7 = new Habitacion();
        habitacion7.setId(7);
        habitacion7.setNombre("Habitacion 1, Simple");
        habitacion7.setDescripcion("Habitacion Clasica con cama extragrande,vistas al oceano y balcon");
        habitacion7.setImagen("assets/img/habi7.jpg");
        habitacion7.setPrecio(10000);
        habitacion7.setHabitaciones(2);
        habitacion7.setMetraje(50);

        // Info Evento 8
        Habitacion habitacion8 = new Habitacion();
        habitacion8.setId(7);
        habitacion8.setNombre("Habitacion 1, Simple");
        habitacion8.setDescripcion("Habitacion Clasica con cama extragrande,vistas al oceano y balcon");
        habitacion8.setImagen("assets/img/habi9.jpg");
        habitacion8.setPrecio(10000);
        habitacion8.setHabitaciones(2);
        habitacion8.setMetraje(50);


        // Agrega Eventos a lista
        habitaciones.add(habitacion1);
        habitaciones.add(habitacion2);
        habitaciones.add(habitacion3);
        habitaciones.add(habitacion4);
        habitaciones.add(habitacion5);
        habitaciones.add(habitacion6);
        habitaciones.add(habitacion7);
        habitaciones.add(habitacion8);


        // Retorno de lista de eventos
        return habitaciones;
    }

    public Habitacion getHabitacionbyID(Habitacion evento) {

        List<Habitacion> listaEventos = getHabitaciones();

        for (int x = 0; x < listaEventos.size(); x++) {

            if (listaEventos.get(x).getId() == evento.getId()) {
                evento = listaEventos.get(x);
            }
        }

        // Retorno de Evento
        return evento;
    }

    public int calculaValorCompra(int valorEvento, int cantidadTickets) {
        int valor = valorEvento * cantidadTickets;
        return valor;
    }
}
