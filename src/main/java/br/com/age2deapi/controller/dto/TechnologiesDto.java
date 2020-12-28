package br.com.age2deapi.controller.dto;

import br.com.age2deapi.model.Technologies;

import java.util.ArrayList;
import java.util.List;

public class TechnologiesDto {

    private String name;
    private String introduced_in;
    private String age;
    private String researched_at;
    private String cost;
    private String research_time;
    private String effect;

    public TechnologiesDto(Technologies tech) {
        this.name = tech.getName();
        this.introduced_in = tech.getIntroduced_in();
        this.age = tech.getAge();
        this.researched_at = tech.getResearched_at();
        this.cost = tech.getCost();
        this.research_time = tech.getResearch_time();
        this.effect = tech.getEffect();
    }

    public static List<TechnologiesDto> convertToDto(List<Technologies> technologies) {
        List<TechnologiesDto> technologiesDtos = new ArrayList<>();
        for (Technologies tech : technologies) {
            technologiesDtos.add(new TechnologiesDto(tech));
        }
        return technologiesDtos;
    }

    public String getName() {
        return name;
    }

    public String getIntroduced_in() {
        return introduced_in;
    }

    public String getAge() {
        return age;
    }

    public String getResearched_at() {
        return researched_at;
    }

    public String getCost() {
        return cost;
    }

    public String getResearch_time() {
        return research_time;
    }

    public String getEffect() {
        return effect;
    }
}
