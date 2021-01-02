package br.com.age2deapi.controller;

import br.com.age2deapi.controller.dto.CivilizationsDto;
import br.com.age2deapi.model.Civilizations;
import br.com.age2deapi.repository.CivilizationsRepository;
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
@Api(value = "Content", produces = MediaType.APPLICATION_JSON_VALUE, tags = {"Content"})
@ApiResponses(value = {
        @ApiResponse(code = 500, message = "Internal Server Error")
})
public class CivilizationsController {

    @Autowired
    CivilizationsRepository civilizationRepository;

    @GetMapping("/civilizations")
    @Cacheable(value = "getAllCivilizations")
    @ApiOperation(value = "Gets a list of all civilizations")
    public List<CivilizationsDto> getAllCivilizations(){
        List<Civilizations> civilizationList = civilizationRepository.findAllByOrderByName();
        return CivilizationsDto.convertToDto(civilizationList);
    }

    @GetMapping("/civilizations/{name}")
    @Cacheable(value = "getCivilizationsByName")
    @ApiOperation(value = "Gets a list of civilizations by name")
    @ApiResponses(value = {
            @ApiResponse(code = 404, message = "Not Found")
    })
    public ResponseEntity<List<CivilizationsDto>> getCivilizationsByName(@PathVariable String name){
        List<Civilizations> civilizationsList = civilizationRepository.findAllByNameStartingWithOrderByName(name);
        if(!CivilizationsDto.convertToDto(civilizationsList).isEmpty()){
            return ResponseEntity.ok(CivilizationsDto.convertToDto(civilizationsList));
        }
        return ResponseEntity.notFound().build();
    }
}

