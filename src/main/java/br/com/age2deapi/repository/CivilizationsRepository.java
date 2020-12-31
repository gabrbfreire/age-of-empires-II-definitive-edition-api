package br.com.age2deapi.repository;

import br.com.age2deapi.model.Civilizations;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CivilizationsRepository extends JpaRepository<Civilizations, Long> {

    List<Civilizations> findAllByOrderByName();

    List<Civilizations> findAllByNameContainingOrderByName(String name);
}
