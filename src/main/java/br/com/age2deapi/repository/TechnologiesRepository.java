package br.com.age2deapi.repository;

import br.com.age2deapi.model.Technologies;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TechnologiesRepository extends JpaRepository<Technologies, Long> {
    List<Technologies> findAllByNameContaining(String name);
}
