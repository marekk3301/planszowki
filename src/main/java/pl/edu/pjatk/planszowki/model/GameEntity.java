package pl.edu.pjatk.planszowki.model;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.sql.Date;
import java.util.Objects;

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "game", schema = "planszowki", catalog = "")
public class GameEntity {
    private String title;
    private long publisherId;
    private String shortDescription;
    private String longDescription;
    private String language;
    private Integer playersMin;
    private Integer playersMax;
    private Integer timeMin;
    private Integer timeMax;
    private Integer ageMin;
    private Integer ageMax;
    private int id;
    private Double rating;
    private Integer ratingsNumber;
    private Double weight;
    private Date releaseDate;

    public GameEntity(int i, String name) {
        this.id = i;
        this.title = name;
    }

    @Basic
    @Column(name = "title")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "publisher_id")
    public long getPublisherId() {
        return publisherId;
    }

    public void setPublisherId(long publisherId) {
        this.publisherId = publisherId;
    }

    @Basic
    @Column(name = "shortdescription")
    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    @Basic
    @Column(name = "longdescription")
    public String getLongDescription() {
        return longDescription;
    }

    public void setLongDescription(String longDescription) {
        this.longDescription = longDescription;
    }

    @Basic
    @Column(name = "language")
    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    @Basic
    @Column(name = "playersmin")
    public Integer getPlayersMin() {
        return playersMin;
    }

    public void setPlayersMin(Integer playersMin) {
        this.playersMin = playersMin;
    }

    @Basic
    @Column(name = "playersmax")
    public Integer getPlayersMax() {
        return playersMax;
    }

    public void setPlayersMax(Integer playersMax) {
        this.playersMax = playersMax;
    }

    @Basic
    @Column(name = "timemin")
    public Integer getTimeMin() {
        return timeMin;
    }

    public void setTimeMin(Integer timeMin) {
        this.timeMin = timeMin;
    }

    @Basic
    @Column(name = "timemax")
    public Integer getTimeMax() {
        return timeMax;
    }

    public void setTimeMax(Integer timeMax) {
        this.timeMax = timeMax;
    }

    @Basic
    @Column(name = "agemin")
    public Integer getAgeMin() {
        return ageMin;
    }

    public void setAgeMin(Integer ageMin) {
        this.ageMin = ageMin;
    }

    @Basic
    @Column(name = "agemax")
    public Integer getAgeMax() {
        return ageMax;
    }

    public void setAgeMax(Integer ageMax) {
        this.ageMax = ageMax;
    }

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "rating")
    public Double getRating() {
        return rating;
    }

    public void setRating(Double rating) {
        this.rating = rating;
    }

    @Basic
    @Column(name = "ratingsnumber")
    public Integer getRatingsNumber() {
        return ratingsNumber;
    }

    public void setRatingsNumber(Integer ratingsNumber) {
        this.ratingsNumber = ratingsNumber;
    }

    @Basic
    @Column(name = "weight")
    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    @Basic
    @Column(name = "releasedate")
    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        GameEntity that = (GameEntity) o;
        return publisherId == that.publisherId && id == that.id && Objects.equals(title, that.title) && Objects.equals(shortDescription, that.shortDescription) && Objects.equals(longDescription, that.longDescription) && Objects.equals(language, that.language) && Objects.equals(playersMin, that.playersMin) && Objects.equals(playersMax, that.playersMax) && Objects.equals(timeMin, that.timeMin) && Objects.equals(timeMax, that.timeMax) && Objects.equals(ageMin, that.ageMin) && Objects.equals(ageMax, that.ageMax) && Objects.equals(rating, that.rating) && Objects.equals(ratingsNumber, that.ratingsNumber) && Objects.equals(weight, that.weight) && Objects.equals(releaseDate, that.releaseDate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(title, publisherId, shortDescription, longDescription, language, playersMin, playersMax, timeMin, timeMax, ageMin, ageMax, id, rating, ratingsNumber, weight, releaseDate);
    }
}
