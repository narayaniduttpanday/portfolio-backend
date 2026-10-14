package com.narayani.portfolio.repo;

import com.narayani.portfolio.model.Experience;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ExperienceRepository extends JpaRepository<Experience, Long> {
    java.util.List<Experience> findByTypeOrderByDisplayOrderAsc(String type);
}
