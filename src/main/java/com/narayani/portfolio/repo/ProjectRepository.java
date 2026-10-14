package com.narayani.portfolio.repo;

import com.narayani.portfolio.model.Project;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProjectRepository extends JpaRepository<Project, Long> {
    java.util.List<Project> findAllByOrderByDisplayOrderAsc();
}
