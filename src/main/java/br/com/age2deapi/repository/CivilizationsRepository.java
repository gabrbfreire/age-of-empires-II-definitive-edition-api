package br.com.age2deapi.repository;

import br.com.age2deapi.model.Civilizations;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CivilizationsRepository extends JpaRepository<Civilizations, Long> {
}
