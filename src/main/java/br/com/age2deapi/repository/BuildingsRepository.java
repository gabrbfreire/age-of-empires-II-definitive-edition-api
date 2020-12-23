package br.com.age2deapi.repository;

import br.com.age2deapi.model.Buildings;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BuildingsRepository extends JpaRepository<Buildings, Long> {
}
