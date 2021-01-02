package br.com.age2deapi.controller;

import br.com.age2deapi.controller.dto.BuildingsDto;
import br.com.age2deapi.model.Buildings;
import br.com.age2deapi.repository.BuildingsRepository;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@Api(value = "Content", produces = MediaType.APPLICATION_JSON_VALUE, tags = {"Content"}, description = " ")
@ApiResponses(value = {
        @ApiResponse(code = 500, message = "Internal Server Error")
})
public class BuildingsController {

    @Autowired
    BuildingsRepository buildingsRepository;

    @GetMapping("/buildings")
    @Cacheable(value = "getAllBuildings")
    @ApiOperation(value = "Gets a list of all buildings")

    public List<BuildingsDto> getAllBuildings(){
        List<Buildings> buildingsList = buildingsRepository.findAllByOrderByName();
        return BuildingsDto.convertToDto(buildingsList);
    }

    @GetMapping("/buildings/{name}")
    @Cacheable(value = "getBuildingsByName")
    @ApiOperation(value = "Gets a list of buildings by name")
    @ApiResponses(value = {
            @ApiResponse(code = 404, message = "Not Found")
    })
    public ResponseEntity<List<BuildingsDto>> getBuildingsByName(@PathVariable String name){
        List<Buildings> buildingsList = buildingsRepository.findAllByNameStartingWithOrderByName(name);
        if(!BuildingsDto.convertToDto(buildingsList).isEmpty()){
            return ResponseEntity.ok(BuildingsDto.convertToDto(buildingsList));
        }
        return ResponseEntity.notFound().build();
    }
}
