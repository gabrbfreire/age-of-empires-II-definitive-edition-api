package br.com.age2deapi.controller;

import br.com.age2deapi.controller.dto.TechnologiesDto;
import br.com.age2deapi.model.Technologies;
import br.com.age2deapi.repository.TechnologiesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class TechnologiesController {

    @Autowired
    TechnologiesRepository technologiesRepository;

    @GetMapping("/technologies")
    @Cacheable(value = "getAllTechnologies")
    public List<TechnologiesDto> getAllTechnologies(){
        List<Technologies> technologiesList = technologiesRepository.findAll();
        return TechnologiesDto.convertToDto(technologiesList);
    }

    @GetMapping("/technologies/{name}")
    @Cacheable(value = "getTechnologiesByName")
    public List<TechnologiesDto> getTechnologiesByName(@PathVariable String name){
        List<Technologies> technologiesList = technologiesRepository.findAllByNameContaining(name);
        return TechnologiesDto.convertToDto(technologiesList);
    }
}
