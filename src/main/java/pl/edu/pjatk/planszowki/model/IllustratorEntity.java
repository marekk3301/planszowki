package pl.edu.pjatk.planszowki.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "illustrator", schema = "planszowki", catalog = "")
public class IllustratorEntity {
    private int id;
    private String name;
    private String middleName;
    private String surname;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "middle_name")
    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    @Basic
    @Column(name = "surname")
    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        IllustratorEntity that = (IllustratorEntity) o;
        return id == that.id && Objects.equals(name, that.name) && Objects.equals(middleName, that.middleName) && Objects.equals(surname, that.surname);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, middleName, surname);
    }
}
