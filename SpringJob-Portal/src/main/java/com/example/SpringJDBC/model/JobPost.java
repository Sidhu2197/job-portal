package com.example.SpringJDBC.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Component
@Entity
public class JobPost {

    @Id
    @NotNull
    private int postId;

    @NotNull
    @Size(min = 3, message = "Profile name must be at least 3 characters")
    private String postProfile;

    @NotNull
    @Size(min = 10, message = "Description must be at least 10 characters")
    private String postDesc;

    @NotNull(message = "Experience cannot be null")
    private Integer reqExperience;

    @NotNull
    @Size(min = 1, message = "Tech stack cannot be empty")
    private String postTechStack;

}