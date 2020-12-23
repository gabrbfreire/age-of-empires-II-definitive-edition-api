package br.com.age2deapi.controller.dto;

import br.com.age2deapi.model.Civilizations;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class CivilizationsDto {
    private String name;
    private String introduced_in;
    private String architecture;
    private String continent;
    private String focus;
    private String unique_units;
    private String unique_technologies;
    private String unique_buildings;

    public CivilizationsDto(Civilizations civilizations) {
        this.name = civilizations.getName();
        this.introduced_in = civilizations.getIntroduced_in();
        this.architecture = civilizations.getArchitecture();
        this.continent = civilizations.getContinent();
        this.focus = civilizations.getFocus();
        this.unique_units = civilizations.getUnique_units();
        this.unique_technologies = civilizations.getUnique_technologies();
        this.unique_buildings = civilizations.getUnique_buildings();
    }

    public static List<CivilizationsDto> convertToDto(List<Civilizations> civilizations){
        List<CivilizationsDto> civilizationsDtoList = new ArrayList<>();
        for (Civilizations civ : civilizations) {
            civilizationsDtoList.add(new CivilizationsDto(civ));
        }
        return civilizationsDtoList;
    }

    public String getName() {
        return name;
    }

    public String getIntroduced_in() {
        return introduced_in;
    }

    public String getArchitecture() {
        return architecture;
    }

    public String getContinent() {
        return continent;
    }

    public String getFocus() {
        return focus;
    }

    public String getUnique_units() {
        return unique_units;
    }

    public String getUnique_technologies() {
        return unique_technologies;
    }

    public String getUnique_buildings() {
        return unique_buildings;
    }
}
