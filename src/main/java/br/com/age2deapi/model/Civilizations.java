package br.com.age2deapi.model;

import javax.persistence.*;

@Entity
public class Civilizations {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String introduced_in;
    private String architecture;
    private String continent;
    private String focus;
    private String unique_units;
    private String unique_technologies;
    private String unique_buildings;

    public Civilizations(){}

    public Civilizations(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIntroduced_in() {
        return introduced_in;
    }

    public void setIntroduced_in(String introduced_in) {
        this.introduced_in = introduced_in;
    }

    public String getArchitecture() {
        return architecture;
    }

    public void setArchitecture(String architecture) {
        this.architecture = architecture;
    }

    public String getContinent() {
        return continent;
    }

    public void setContinent(String continent) {
        this.continent = continent;
    }

    public String getFocus() {
        return focus;
    }

    public void setFocus(String focus) {
        this.focus = focus;
    }

    public String getUnique_units() {
        return unique_units;
    }

    public void setUnique_units(String unique_units) {
        this.unique_units = unique_units;
    }

    public String getUnique_technologies() {
        return unique_technologies;
    }

    public void setUnique_technologies(String unique_technologies) {
        this.unique_technologies = unique_technologies;
    }

    public String getUnique_buildings() {
        return unique_buildings;
    }

    public void setUnique_buildings(String unique_buildings) {
        this.unique_buildings = unique_buildings;
    }
}
