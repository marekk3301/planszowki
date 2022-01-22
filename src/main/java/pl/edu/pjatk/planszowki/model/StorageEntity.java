package pl.edu.pjatk.planszowki.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "storage", schema = "planszowki", catalog = "")
public class StorageEntity {
    private int id;
    private int gameId;
    private int quantity;
    private Double price;
    private Byte archived;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "game_id")
    public int getGameId() {
        return gameId;
    }

    public void setGameId(int gameId) {
        this.gameId = gameId;
    }

    @Basic
    @Column(name = "quantity")
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Basic
    @Column(name = "price")
    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    @Basic
    @Column(name = "archived")
    public Byte getArchived() {
        return archived;
    }

    public void setArchived(Byte archived) {
        this.archived = archived;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        StorageEntity that = (StorageEntity) o;
        return id == that.id && gameId == that.gameId && quantity == that.quantity && Objects.equals(price, that.price) && Objects.equals(archived, that.archived);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, gameId, quantity, price, archived);
    }
}
