package br.com.age2deapi.controller;

import br.com.age2deapi.controller.dto.UnitsDto;
import br.com.age2deapi.model.Units;
import br.com.age2deapi.repository.UnitsRepository;
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
public class UnitsController {

    @Autowired
    UnitsRepository unitsRepository;

    @GetMapping("/units")
    @Cacheable(value = "getAllUnits")
    @ApiOperation(value = "Gets a list of all units")
    public List<UnitsDto> getAllUnits(){
        List<Units> unitsList = unitsRepository.findAllByOrderByName();
        return UnitsDto.convertToDto(unitsList);
    }

    @GetMapping("/units/{name}")
    @Cacheable(value = "getUnitsByName")
    @ApiOperation(value = "Gets a list of units by name")
    @ApiResponses(value = {
            @ApiResponse(code = 404, message = "Not Found")
    })
    public ResponseEntity<List<UnitsDto>> getUnitsByName(@PathVariable String name){
        List<Units> unitsList = unitsRepository.findAllByNameStartingWithOrderByName(name);
        if(!UnitsDto.convertToDto(unitsList).isEmpty()){
            return ResponseEntity.ok(UnitsDto.convertToDto(unitsList));
        }
        return ResponseEntity.notFound().build();
    }
}
