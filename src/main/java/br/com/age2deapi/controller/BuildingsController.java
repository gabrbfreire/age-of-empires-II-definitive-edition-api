package br.com.age2deapi.controller;

import br.com.age2deapi.controller.dto.BuildingsDto;
import br.com.age2deapi.controller.dto.CivilizationsDto;
import br.com.age2deapi.model.Buildings;
import br.com.age2deapi.model.Civilizations;
import br.com.age2deapi.repository.BuildingsRepository;
import br.com.age2deapi.repository.CivilizationsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class BuildingsController {

    @Autowired
    BuildingsRepository buildingsRepository;

    @GetMapping("/buildings")
    public List<BuildingsDto> getAllBuildings(){
        List<Buildings> buildingsList = buildingsRepository.findAll();
        return BuildingsDto.convertToDto(buildingsList);
    }
}
