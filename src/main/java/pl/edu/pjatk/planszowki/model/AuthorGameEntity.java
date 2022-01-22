package pl.edu.pjatk.planszowki.model;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "author_game", schema = "planszowki")
public class AuthorGameEntity {
    @Id
    private Long id;

    private Integer authorId;
    private Integer gameId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "author_id")
    public Integer getAuthorId() {
        return authorId;
    }

    public void setAuthorId(Integer authorId) {
        this.authorId = authorId;
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
        AuthorGameEntity that = (AuthorGameEntity) o;
        return Objects.equals(authorId, that.authorId) && Objects.equals(gameId, that.gameId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(authorId, gameId);
    }
}
