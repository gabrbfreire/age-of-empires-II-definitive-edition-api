package br.com.age2deapi.controller;

import br.com.age2deapi.controller.dto.BuildingsDto;
import br.com.age2deapi.controller.dto.CivilizationsDto;
import br.com.age2deapi.model.Buildings;
import br.com.age2deapi.model.Civilizations;
import br.com.age2deapi.repository.BuildingsRepository;
import br.com.age2deapi.repository.CivilizationsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
public class BuildingsController {

    @Autowired
    BuildingsRepository buildingsRepository;

    @GetMapping("/buildings")
    public List<BuildingsDto> getAllBuildings(){
        List<Buildings> buildingsList = buildingsRepository.findAll();
        return BuildingsDto.convertToDto(buildingsList);
    }

    @GetMapping("/buildings/{name}")
    public List<BuildingsDto> getBuildingById(@PathVariable String name){
        List<Buildings> buildingsList = buildingsRepository.findAllByNameContaining(name);
        return BuildingsDto.convertToDto(buildingsList);
    }
}
