package br.com.age2deapi.repository;

import br.com.age2deapi.controller.dto.UnitsDto;
import br.com.age2deapi.model.Units;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UnitsRepository extends JpaRepository<Units, Long> {
    List<Units> findAllByNameContaining(String name);
}
