package br.com.age2deapi.repository;

import br.com.age2deapi.model.Buildings;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface BuildingsRepository extends JpaRepository<Buildings, Long> {

    List<Buildings> findAllByNameContaining(String name);
}
