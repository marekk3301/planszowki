package pl.edu.pjatk.planszowki.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.edu.pjatk.planszowki.model.GameEntity;

import java.util.List;

@Repository
public interface GameRepository extends JpaRepository<GameEntity, Long> {
    GameEntity findById(int id);
    List<GameEntity> findAll();
}
