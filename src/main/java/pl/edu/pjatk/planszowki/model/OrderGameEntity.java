package pl.edu.pjatk.planszowki.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "order_game", schema = "planszowki", catalog = "")
public class OrderGameEntity {
    @Id
    private Long id;

    private int orderId;
    private int gameId;
    private Integer orderQuantity;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "order_id")
    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
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
    @Column(name = "orderQuantity")
    public Integer getOrderQuantity() {
        return orderQuantity;
    }

    public void setOrderQuantity(Integer orderQuantity) {
        this.orderQuantity = orderQuantity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrderGameEntity that = (OrderGameEntity) o;
        return orderId == that.orderId && gameId == that.gameId && Objects.equals(orderQuantity, that.orderQuantity);
    }

    @Override
    public int hashCode() {
        return Objects.hash(orderId, gameId, orderQuantity);
    }
}
