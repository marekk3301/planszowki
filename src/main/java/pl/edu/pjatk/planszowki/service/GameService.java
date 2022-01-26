package pl.edu.pjatk.planszowki.service;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import pl.edu.pjatk.planszowki.exceptions.GameNotFoundException;
import pl.edu.pjatk.planszowki.exceptions.IdAlreadyExistsException;
import pl.edu.pjatk.planszowki.model.GameEntity;
//import pl.edu.pjatk.planszowki.model.GameEntity$;
import pl.edu.pjatk.planszowki.repository.GameRepository;

import java.util.List;
import java.util.Locale;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Service
@Component
public class GameService {
    private final GameRepository gameRepository;

//    @Autowired
//    JPAStreamer jpaStreamer = JPAStreamer.of("planszowki");

    public List<GameEntity> getAllGamesFromRepository() {
        return gameRepository.findAll();
    }

    public List<GameEntity> getFilteredGamesFromRepository(String keyword) {
//        return jpaStreamer.stream(GameEntity.class)
//                .filter(GameEntity$.title.contains(keyword.toLowerCase(Locale.ROOT)))
//                .collect(Collectors.toList());
        return null;
    }

    public GameEntity getGameFromRepository(String id) {
        GameEntity game = gameRepository.findById(Integer.parseInt(id));
        if(game == null){
            throw new GameNotFoundException();
        }else return game;
    }

    public void putGameToRepository(GameEntity game){
        GameEntity game1 = gameRepository.findById(game.getId());
        if(game1 == null)
            gameRepository.save(game);
        else throw new IdAlreadyExistsException();
    }

    public void deleteGameFromRepository(String id){
        if(getGameFromRepository(id) == null) throw new GameNotFoundException();
        gameRepository.delete(getGameFromRepository(id));
    }

    public void updateCarInRepository(GameEntity game){
        GameEntity gameToUpdate = gameRepository.findById(game.getId());
        if (gameToUpdate != null){
            gameToUpdate.setTitle(game.getTitle());
            gameRepository.save(gameToUpdate);
        }else {
            throw new GameNotFoundException();
        }

    }


}
