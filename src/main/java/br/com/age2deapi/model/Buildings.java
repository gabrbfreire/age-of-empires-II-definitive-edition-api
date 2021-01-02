package br.com.age2deapi.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Buildings {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String description;
    private String introduced_in;
    private Integer age;
    private String use;
    private String cost;
    private Integer construction_time;
    private String size;
    private Integer hit_points;
    private Integer garrison;
    private String attack;
    private String attack_bonuses;
    private Integer range;
    private String accuracy;
    private Integer projectile_speed;
    private Integer line_of_sight;

    public Long getId() {
        return id;
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

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getUse() {
        return use;
    }

    public void setUse(String use) {
        this.use = use;
    }

    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        this.cost = cost;
    }

    public Integer getConstruction_time() {
        return construction_time;
    }

    public void setConstruction_time(Integer construction_time) {
        this.construction_time = construction_time;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public Integer getHit_points() {
        return hit_points;
    }

    public void setHit_points(Integer hit_points) {
        this.hit_points = hit_points;
    }

    public Integer getGarrison() {
        return garrison;
    }

    public void setGarrison(Integer garrison) {
        this.garrison = garrison;
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

    public Integer getRange() {
        return range;
    }

    public void setRange(Integer range) {
        this.range = range;
    }

    public String getAccuracy() {
        return accuracy;
    }

    public void setAccuracy(String accuracy) {
        this.accuracy = accuracy;
    }

    public Integer getProjectile_speed() {
        return projectile_speed;
    }

    public void setProjectile_speed(Integer projectile_speed) {
        this.projectile_speed = projectile_speed;
    }

    public Integer getLine_of_sight() {
        return line_of_sight;
    }

    public void setLine_of_sight(Integer line_of_sight) {
        this.line_of_sight = line_of_sight;
    }
}
