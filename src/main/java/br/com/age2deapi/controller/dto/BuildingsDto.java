package br.com.age2deapi.controller.dto;

import br.com.age2deapi.model.Buildings;

import java.util.ArrayList;
import java.util.List;

public class BuildingsDto {

    private String name;
    private String description;
    private String introduced_in;
    private String age;
    private String use;
    private String cost;
    private String construction_time;
    private String size;
    private String hit_points;
    private String garrison;
    private String attack;
    private String attack_bonuses;
    private String range;
    private String accuracy;
    private String projectile_speed;
    private String line_of_sight;

    public BuildingsDto(Buildings building) {
        this.name = building.getName();
        this.description = building.getDescription();
        this.introduced_in = building.getIntroduced_in();
        this.age = building.getAge();
        this.use = building.getUse();
        this.cost = building.getCost();
        this.construction_time = building.getConstruction_time();
        this.size = building.getSize();
        this.hit_points = building.getHit_points();
        this.garrison = building.getGarrison();
        this.attack = building.getAttack();
        this.attack_bonuses = building.getAttack_bonuses();
        this.range = building.getRange();
        this.accuracy = building.getAccuracy();
        this.projectile_speed = building.getProjectile_speed();
        this.line_of_sight = building.getLine_of_sight();
    }

    public static List<BuildingsDto> convertToDto(List<Buildings> buildings) {
        List<BuildingsDto> buildingsDtoList = new ArrayList<>();
        for (Buildings building : buildings) {
            buildingsDtoList.add(new BuildingsDto(building));
        }
        return buildingsDtoList;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getIntroduced_in() {
        return introduced_in;
    }

    public String getAge() {
        return age;
    }

    public String getUse() {
        return use;
    }

    public String getCost() {
        return cost;
    }

    public String getConstruction_time() {
        return construction_time;
    }

    public String getSize() {
        return size;
    }

    public String getHit_points() {
        return hit_points;
    }

    public String getGarrison() {
        return garrison;
    }

    public String getAttack() {
        return attack;
    }

    public String getAttack_bonuses() {
        return attack_bonuses;
    }

    public String getRange() {
        return range;
    }

    public String getAccuracy() {
        return accuracy;
    }

    public String getProjectile_speed() {
        return projectile_speed;
    }

    public String getLine_of_sight() {
        return line_of_sight;
    }
}
