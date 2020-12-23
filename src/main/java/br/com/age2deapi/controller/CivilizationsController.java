package br.com.age2deapi.controller;

import br.com.age2deapi.model.Civilizations;
import br.com.age2deapi.repository.CivilizationsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class CivilizationsController {

    @Autowired
    CivilizationsRepository civilizationRepository;

    @GetMapping("/civilizations")
    public List<Civilizations> getAllCivilizations(){
        List<Civilizations> civilizationList = civilizationRepository.findAll();
        return civilizationList;
    }
}

