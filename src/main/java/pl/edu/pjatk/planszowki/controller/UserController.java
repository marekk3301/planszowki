package pl.edu.pjatk.planszowki.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import pl.edu.pjatk.planszowki.model.GameEntity;
import pl.edu.pjatk.planszowki.service.GameService;

@RestController
public class UserController {

    GameService gameService;

    @Autowired
    public UserController(GameService gameService) {
        this.gameService = gameService;
    }

    @GetMapping("/game/{id}")
    public ResponseEntity<GameEntity> getGame(@PathVariable String id){
        GameEntity game = gameService.getGameFromRepository(id);
        return new ResponseEntity<>(game, HttpStatus.OK);
    }

    @PostMapping("/car/add")
    public ResponseEntity<GameEntity> addGame(@RequestBody GameEntity game){
        gameService.putGameToRepository(game);
        return new ResponseEntity<>(game, HttpStatus.OK);
    }

    @DeleteMapping("/car/del/{id}")
    public ResponseEntity<GameEntity> deleteCar(@PathVariable String id){
        gameService.deleteGameFromRepository(id);
        return ResponseEntity.ok().build();
    }

    @PutMapping("/car/update")
    public ResponseEntity<GameEntity> updateCar(@RequestBody GameEntity game){
        gameService.updateCarInRepository(game);
        return new ResponseEntity<>(game, HttpStatus.OK);
    }
}
