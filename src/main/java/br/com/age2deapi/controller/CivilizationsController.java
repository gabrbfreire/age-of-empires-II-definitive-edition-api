package br.com.age2deapi.controller;

import br.com.age2deapi.controller.dto.CivilizationsDto;
import br.com.age2deapi.model.Civilizations;
import br.com.age2deapi.repository.CivilizationsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class CivilizationsController {

    @Autowired
    CivilizationsRepository civilizationRepository;

    @GetMapping("/civilizations")
    @Cacheable(value = "getAllCivilizations")
    public List<CivilizationsDto> getAllCivilizations(){
        List<Civilizations> civilizationList = civilizationRepository.findAllByOrderByName();
        return CivilizationsDto.convertToDto(civilizationList);
    }

    @GetMapping("/civilizations/{name}")
    @Cacheable(value = "getCivilizationsByName")
    public List<CivilizationsDto> getCivilizationsByName(@PathVariable String name){
        List<Civilizations> civilizationsList = civilizationRepository.findAllByNameContainingOrderByName(name);
        return CivilizationsDto.convertToDto(civilizationsList);
    }
}

