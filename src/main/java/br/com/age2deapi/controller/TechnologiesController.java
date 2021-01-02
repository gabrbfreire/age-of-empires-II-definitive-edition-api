package br.com.age2deapi.controller;

import br.com.age2deapi.controller.dto.TechnologiesDto;
import br.com.age2deapi.model.Technologies;
import br.com.age2deapi.repository.TechnologiesRepository;
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
public class TechnologiesController {

    @Autowired
    TechnologiesRepository technologiesRepository;

    @GetMapping("/technologies")
    @Cacheable(value = "getAllTechnologies")
    @ApiOperation(value = "Gets a list of all technologies")
    public List<TechnologiesDto> getAllTechnologies(){
        List<Technologies> technologiesList = technologiesRepository.findAllByOrderByName();
        return TechnologiesDto.convertToDto(technologiesList);
    }

    @GetMapping("/technologies/{name}")
    @Cacheable(value = "getTechnologiesByName")
    @ApiOperation(value = "Gets a list of technologies by name")
    @ApiResponses(value = {
            @ApiResponse(code = 404, message = "Not Found")
    })
    public ResponseEntity<List<TechnologiesDto>> getTechnologiesByName(@PathVariable String name){
        List<Technologies> technologiesList = technologiesRepository.findAllByNameStartingWithOrderByName(name);
        if(!TechnologiesDto.convertToDto(technologiesList).isEmpty()){
            return ResponseEntity.ok(TechnologiesDto.convertToDto(technologiesList));
        }
        return ResponseEntity.notFound().build();
    }
}
