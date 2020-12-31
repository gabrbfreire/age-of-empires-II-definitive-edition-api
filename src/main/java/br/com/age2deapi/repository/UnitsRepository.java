package br.com.age2deapi.repository;

import br.com.age2deapi.model.Units;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UnitsRepository extends JpaRepository<Units, Long> {

    List<Units> findAllByNameContainingOrderByName(String name);

    List<Units> findAllByOrderByName();
}
