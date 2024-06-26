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


        // Agrega Eventos a lista
        habitaciones.add(habitacion1);


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
