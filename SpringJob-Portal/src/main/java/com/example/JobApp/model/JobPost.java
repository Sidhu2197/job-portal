package com.example.JobApp.model;

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
    @Size(min = 3, max = 50)
    private String postProfile;

    @NotNull
    @Size(min = 10, max = 200)
    private String postDesc;

    @NotNull
    private Integer reqExperience;

    @NotNull
    private String postTechStack;

}