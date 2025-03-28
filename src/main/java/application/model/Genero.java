package application.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "Genero")
public class Genero {
    private long id;
    private String nome;
}
