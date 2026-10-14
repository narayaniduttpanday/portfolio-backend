package com.narayani.portfolio.repo;

import com.narayani.portfolio.model.Skill;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SkillRepository extends JpaRepository<Skill, Long> {
    java.util.List<Skill> findAllByOrderByCategoryAscDisplayOrderAsc();
}
