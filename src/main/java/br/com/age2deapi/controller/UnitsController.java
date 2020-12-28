package br.com.age2deapi.controller;

import br.com.age2deapi.controller.dto.TechnologiesDto;
import br.com.age2deapi.controller.dto.UnitsDto;
import br.com.age2deapi.model.Technologies;
import br.com.age2deapi.model.Units;
import br.com.age2deapi.repository.UnitsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UnitsController {

    @Autowired
    UnitsRepository unitsRepository;

    @GetMapping("/units")
    public List<UnitsDto> getAllUnits(){
        List<Units> unitsList = unitsRepository.findAll();
        return UnitsDto.convertToDto(unitsList);
    }

    @GetMapping("/units/{name}")
    public List<UnitsDto> getUnitsByName(@PathVariable String name){
        List<Units> unitsList = unitsRepository.findAllByNameContaining(name);
        return UnitsDto.convertToDto(unitsList);
    }
}
