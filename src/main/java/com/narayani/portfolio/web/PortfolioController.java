package com.narayani.portfolio.web;

import com.narayani.portfolio.model.*;
import com.narayani.portfolio.repo.*;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api")
public class PortfolioController {

    private final ProjectRepository projects;
    private final SkillRepository skills;
    private final ExperienceRepository experience;
    private final ContactMessageRepository messages;

    public PortfolioController(ProjectRepository projects, SkillRepository skills,
                               ExperienceRepository experience, ContactMessageRepository messages) {
        this.projects = projects;
        this.skills = skills;
        this.experience = experience;
        this.messages = messages;
    }

    @GetMapping("/projects")
    public List<Project> projects() { return projects.findAllByOrderByDisplayOrderAsc(); }

    @GetMapping("/skills")
    public List<Skill> skills() { return skills.findAllByOrderByCategoryAscDisplayOrderAsc(); }

    /** type = WORK (default) or EDUCATION */
    @GetMapping("/experience")
    public List<Experience> experience(@RequestParam(defaultValue = "WORK") String type) {
        return experience.findByTypeOrderByDisplayOrderAsc(type.toUpperCase());
    }

    @PostMapping("/contact")
    @ResponseStatus(HttpStatus.CREATED)
    public Map<String, String> contact(@Valid @RequestBody ContactMessage msg) {
        msg.setId(null);
        messages.save(msg);
        return Map.of("status", "received");
    }
}
