package com.example.SpringJDBC;

import com.example.SpringJDBC.model.JobPost;
import com.example.SpringJDBC.service.JobService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class JobController {

    @Autowired
    private JobService service;

    // Maps the root URL ("/") and "/home" to the home page
    @GetMapping({"/", "home"})
    public String home() {
        return "home"; // This returns the view named "home.jsp"
    }

    // Maps the "/addjob" URL to the page for adding a new job
    @GetMapping("/addjob")
    public String addJob(Model model) {
        model.addAttribute("jobPost", new JobPost());
        return "addjob"; // This returns the view named "addjob.jsp"
    }

    // Handles the form submission from the "addjob" page
    @PostMapping("/handleForm")
    public String handleForm(@Valid @ModelAttribute("jobPost") JobPost jobPost, BindingResult result) {
        if (result.hasErrors()) {
            return "addjob"; // If there are errors, show the form again
        }
        service.addJob(jobPost);
        return "success"; // On success, returns the view named "success.jsp"
    }

    // Maps the "/viewalljobs" URL to display all job posts
    @GetMapping("/viewalljobs")
    public String viewAllJobs(Model model) {
        List<JobPost> jobs = service.getAllJobs();
        model.addAttribute("jobPosts", jobs);
        return "viewalljobs"; // This returns the view named "viewalljobs.jsp"
    }

    // Maps the "/edit" URL to the page for editing a job
    @GetMapping("/edit")
    public String editJob(@RequestParam("postId") int postId, Model model) {
        JobPost jobPost = service.getJob(postId);
        model.addAttribute("jobPost", jobPost);
        return "editjob"; // This returns the view named "editjob.jsp"
    }

    // Handles the form submission from the "editjob" page
    @PostMapping("/updateJob")
    public String updateJob(@Valid @ModelAttribute("jobPost") JobPost jobPost, BindingResult result) {
        if (result.hasErrors()) {
            return "editjob";
        }
        service.updateJob(jobPost);
        return "redirect:/viewalljobs"; // Redirects back to the list of all jobs
    }

    // Handles the request to delete a job post
    @GetMapping("/delete")
    public String deleteJob(@RequestParam("postId") int postId) {
        service.deleteJob(postId);
        return "redirect:/viewalljobs"; // Redirects back to the list of all jobs
    }
}