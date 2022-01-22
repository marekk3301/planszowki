package pl.edu.pjatk.planszowki.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import pl.edu.pjatk.planszowki.service.GameService;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
public class GameController {

    @Autowired
    private final GameService gameService;

    @GetMapping("/all")
    public String showAll(Model model) {
        model.addAttribute("games", gameService.getAllGamesFromRepository());
        return "index";
    }

    @GetMapping("/results")
    public String showFiltered(Model model, @RequestParam(value = "search__text", required = false) String keyword) {
        model.addAttribute("filteredGames", gameService.getFilteredGamesFromRepository(keyword));
        return "index";
    }
}