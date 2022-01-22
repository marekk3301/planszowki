package pl.edu.pjatk.planszowki.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "illustrator_game", schema = "planszowki", catalog = "")
public class IllustratorGameEntity {
    @Id
    private Long id;

    private Integer illustratorId;
    private Integer gameId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "illustrator_id")
    public Integer getIllustratorId() {
        return illustratorId;
    }

    public void setIllustratorId(Integer illustratorId) {
        this.illustratorId = illustratorId;
    }

    @Basic
    @Column(name = "game_id")
    public Integer getGameId() {
        return gameId;
    }

    public void setGameId(Integer gameId) {
        this.gameId = gameId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        IllustratorGameEntity that = (IllustratorGameEntity) o;
        return Objects.equals(illustratorId, that.illustratorId) && Objects.equals(gameId, that.gameId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(illustratorId, gameId);
    }
}
