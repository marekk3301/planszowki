package pl.edu.pjatk.planszowki.exceptions;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import pl.edu.pjatk.planszowki.model.GameEntity;

@ControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(GameNotFoundException.class)
    public ResponseEntity<GameEntity> handleNotFound(){
        return ResponseEntity.notFound().build();
    }

    @ExceptionHandler(IdAlreadyExistsException.class)
    public ResponseEntity<GameEntity> handleIdNotFound(){
        return ResponseEntity.badRequest().build();
    }
}
