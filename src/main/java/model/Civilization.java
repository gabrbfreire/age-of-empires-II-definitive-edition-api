package model;

import javax.persistence.*;
import java.util.List;

@Entity
public class Civilization {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String description;
    private String introduced_in;
    private String architecture;
    private String continent;
    @ElementCollection
    private List<String> focus;
    @ElementCollection
    private List<String> unique_units;
    @ElementCollection
    private List<String> unique_technologies;
    @ElementCollection
    private List<String> unique_buildings;

    public Civilization(){}

    public Civilization(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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

    public List<String> getFocus() {
        return focus;
    }

    public void setFocus(List<String> focus) {
        this.focus = focus;
    }

    public List<String> getUnique_units() {
        return unique_units;
    }

    public void setUnique_units(List<String> unique_units) {
        this.unique_units = unique_units;
    }

    public List<String> getUnique_technologies() {
        return unique_technologies;
    }

    public void setUnique_technologies(List<String> unique_technologies) {
        this.unique_technologies = unique_technologies;
    }

    public List<String> getUnique_buildings() {
        return unique_buildings;
    }

    public void setUnique_buildings(List<String> unique_buildings) {
        this.unique_buildings = unique_buildings;
    }
}
