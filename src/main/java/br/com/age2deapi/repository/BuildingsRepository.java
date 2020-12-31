package br.com.age2deapi.repository;

import br.com.age2deapi.model.Buildings;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BuildingsRepository extends JpaRepository<Buildings, Long> {

    List<Buildings> findAllByOrderByName();

    List<Buildings> findAllByNameStartingWithOrderByName(String name);
}
