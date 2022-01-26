package pl.edu.pjatk.planszowki;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import pl.edu.pjatk.planszowki.controller.GameController;
import pl.edu.pjatk.planszowki.exceptions.GameNotFoundException;
import pl.edu.pjatk.planszowki.model.GameEntity;
import pl.edu.pjatk.planszowki.service.GameService;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringJUnit4ClassRunner.class)
@WebMvcTest(GameController.class)
class GameControllerTest {
    @Autowired
    private MockMvc mvc;

    @MockBean
    private GameService gameService;

    @Test
    void showGameShowsGame() throws Exception, GameNotFoundException {
        GameEntity testGame = new GameEntity(30, "szachy");
        when(gameService.getGameFromRepository("30")).thenReturn(testGame);

        mvc.perform(MockMvcRequestBuilders.get("/game/30")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().json("{'title':'szachy'}"));
    }
}

