package br.com.age2deapi.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Technologies {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String introduced_in;
    private Integer age;
    private String researched_at;
    private String cost;
    private Integer research_time;
    private String effect;

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

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getResearched_at() {
        return researched_at;
    }

    public void setResearched_at(String researched_at) {
        this.researched_at = researched_at;
    }

    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        this.cost = cost;
    }

    public Integer getResearch_time() {
        return research_time;
    }

    public void setResearch_time(Integer research_time) {
        this.research_time = research_time;
    }

    public String getEffect() {
        return effect;
    }

    public void setEffect(String effect) {
        this.effect = effect;
    }
}
