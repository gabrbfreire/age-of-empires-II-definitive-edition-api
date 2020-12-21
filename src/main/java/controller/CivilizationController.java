package controller;

import model.Civilization;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class CivilizationController {

    @GetMapping("/civilizations")
    public List<Civilization> getAllCivilizations(){
        Civilization civilization = new Civilization(1L,"macaco");
        List<Civilization> list = new ArrayList<Civilization>();
        list.add(civilization);

        return list;
    }
}

