package pl.edu.pjatk.planszowki.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "user", schema = "planszowki", catalog = "")
public class UserEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String email;
    private String phoneNumber;
    private String username;
    private String password;
    private String name;
    private String surname;
    private String country;
    private String city;
    private String adressLine1;
    private String postalCode;
    private Byte regular;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "phoneNumber")
    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    @Basic
    @Column(name = "username")
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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
    @Column(name = "surname")
    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    @Basic
    @Column(name = "country")
    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Basic
    @Column(name = "city")
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Basic
    @Column(name = "adressLine1")
    public String getAdressLine1() {
        return adressLine1;
    }

    public void setAdressLine1(String adressLine1) {
        this.adressLine1 = adressLine1;
    }

    @Basic
    @Column(name = "postalCode")
    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    @Basic
    @Column(name = "regular")
    public Byte getRegular() {
        return regular;
    }

    public void setRegular(Byte regular) {
        this.regular = regular;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserEntity that = (UserEntity) o;
        return id == that.id && Objects.equals(email, that.email) && Objects.equals(phoneNumber, that.phoneNumber) && Objects.equals(username, that.username) && Objects.equals(password, that.password) && Objects.equals(name, that.name) && Objects.equals(surname, that.surname) && Objects.equals(country, that.country) && Objects.equals(city, that.city) && Objects.equals(adressLine1, that.adressLine1) && Objects.equals(postalCode, that.postalCode) && Objects.equals(regular, that.regular);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, email, phoneNumber, username, password, name, surname, country, city, adressLine1, postalCode, regular);
    }
}
