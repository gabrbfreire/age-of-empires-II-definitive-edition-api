package br.com.age2deapi.controller.dto;

import br.com.age2deapi.model.Units;

import java.util.ArrayList;
import java.util.List;

public class UnitsDto {

    private String name;
    private String description;
    private String introduced_in;
    private String type;
    private Integer age;
    private String trained_at;
    private String cost;
    private Integer training_time;
    private Integer hit_points;
    private String attack;
    private String attack_bonuses;
    private String rate_of_fire;
    private Integer melee_armor;
    private Integer pierce_armor;
    private String speed;
    private String line_of_sight;
    private String upgrades_to;
    private String upgrade_cost;
    private Integer upgrade_time;

    public UnitsDto(Units unit) {
        this.name = unit.getName();
        this.description = unit.getDescription();
        this.introduced_in = unit.getIntroduced_in();
        this.type = unit.getType();
        this.age = unit.getAge();
        this.trained_at = unit.getTrained_at();
        this.cost = unit.getCost();
        this.training_time = unit.getTraining_time();
        this.hit_points = unit.getHit_points();
        this.attack = unit.getAttack();
        this.attack_bonuses = unit.getAttack_bonuses();
        this.rate_of_fire = unit.getRate_of_fire();
        this.melee_armor = unit.getMelee_armor();
        this.pierce_armor = unit.getPierce_armor();
        this.speed = unit.getSpeed();
        this.line_of_sight = unit.getLine_of_sight();
        this.upgrades_to = unit.getUpgrades_to();
        this.upgrade_cost = unit.getUpgrade_cost();
        this.upgrade_time = unit.getUpgrade_time();
    }

    public static List<UnitsDto> convertToDto(List<Units> units){
        List<UnitsDto> unitsDtoList = new ArrayList<>();
        for (Units unit : units) {
            unitsDtoList.add(new UnitsDto(unit));
        }
        return unitsDtoList;
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

    public String getType() {
        return type;
    }

    public Integer getAge() {
        return age;
    }

    public String getTrained_at() {
        return trained_at;
    }

    public String getCost() {
        return cost;
    }

    public Integer getTraining_time() {
        return training_time;
    }

    public Integer getHit_points() {
        return hit_points;
    }

    public String getAttack() {
        return attack;
    }

    public String getAttack_bonuses() {
        return attack_bonuses;
    }

    public String getRate_of_fire() {
        return rate_of_fire;
    }

    public Integer getMelee_armor() {
        return melee_armor;
    }

    public Integer getPierce_armor() {
        return pierce_armor;
    }

    public String getSpeed() {
        return speed;
    }

    public String getLine_of_sight() {
        return line_of_sight;
    }

    public String getUpgrades_to() {
        return upgrades_to;
    }

    public String getUpgrade_cost() {
        return upgrade_cost;
    }

    public Integer getUpgrade_time() {
        return upgrade_time;
    }
}
