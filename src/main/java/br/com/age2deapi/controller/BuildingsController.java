package br.com.age2deapi.controller;

import br.com.age2deapi.controller.dto.BuildingsDto;
import br.com.age2deapi.model.Buildings;
import br.com.age2deapi.repository.BuildingsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class BuildingsController {

    @Autowired
    BuildingsRepository buildingsRepository;

    @GetMapping("/buildings")
    @Cacheable(value = "getAllBuildings")
    public List<BuildingsDto> getAllBuildings(){
        List<Buildings> buildingsList = buildingsRepository.findAllByOrderByName();
        return BuildingsDto.convertToDto(buildingsList);
    }

    @GetMapping("/buildings/{name}")
    @Cacheable(value = "getBuildingsByName")
    public ResponseEntity<List<BuildingsDto>> getBuildingsByName(@PathVariable String name){
        List<Buildings> buildingsList = buildingsRepository.findAllByNameStartingWithOrderByName(name);
        if(!BuildingsDto.convertToDto(buildingsList).isEmpty()){
            return ResponseEntity.ok(BuildingsDto.convertToDto(buildingsList));
        }
        return ResponseEntity.notFound().build();
    }
}
