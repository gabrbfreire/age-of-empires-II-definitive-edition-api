package br.com.age2deapi.controller.dto;

import br.com.age2deapi.model.Units;

import java.util.ArrayList;
import java.util.List;

public class UnitsDto {

    private Long id;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getTrained_at() {
        return trained_at;
    }

    public void setTrained_at(String trained_at) {
        this.trained_at = trained_at;
    }

    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        this.cost = cost;
    }

    public Integer getTraining_time() {
        return training_time;
    }

    public void setTraining_time(Integer training_time) {
        this.training_time = training_time;
    }

    public Integer getHit_points() {
        return hit_points;
    }

    public void setHit_points(Integer hit_points) {
        this.hit_points = hit_points;
    }

    public String getAttack() {
        return attack;
    }

    public void setAttack(String attack) {
        this.attack = attack;
    }

    public String getAttack_bonuses() {
        return attack_bonuses;
    }

    public void setAttack_bonuses(String attack_bonuses) {
        this.attack_bonuses = attack_bonuses;
    }

    public String getRate_of_fire() {
        return rate_of_fire;
    }

    public void setRate_of_fire(String rate_of_fire) {
        this.rate_of_fire = rate_of_fire;
    }

    public Integer getMelee_armor() {
        return melee_armor;
    }

    public void setMelee_armor(Integer melee_armor) {
        this.melee_armor = melee_armor;
    }

    public Integer getPierce_armor() {
        return pierce_armor;
    }

    public void setPierce_armor(Integer pierce_armor) {
        this.pierce_armor = pierce_armor;
    }

    public String getSpeed() {
        return speed;
    }

    public void setSpeed(String speed) {
        this.speed = speed;
    }

    public String getLine_of_sight() {
        return line_of_sight;
    }

    public void setLine_of_sight(String line_of_sight) {
        this.line_of_sight = line_of_sight;
    }

    public String getUpgrades_to() {
        return upgrades_to;
    }

    public void setUpgrades_to(String upgrades_to) {
        this.upgrades_to = upgrades_to;
    }

    public String getUpgrade_cost() {
        return upgrade_cost;
    }

    public void setUpgrade_cost(String upgrade_cost) {
        this.upgrade_cost = upgrade_cost;
    }

    public Integer getUpgrade_time() {
        return upgrade_time;
    }

    public void setUpgrade_time(Integer upgrade_time) {
        this.upgrade_time = upgrade_time;
    }
}
