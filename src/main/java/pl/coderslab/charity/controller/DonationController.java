package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.entity.Category;
import pl.coderslab.charity.entity.Donation;
import pl.coderslab.charity.entity.Institution;
import pl.coderslab.charity.repository.CategoryRepository;
import pl.coderslab.charity.repository.DonationRepository;
import pl.coderslab.charity.repository.InstitutionRepository;

import javax.validation.Valid;
import java.util.List;


@Controller
@RequestMapping("/form")
public class DonationController {

    private final DonationRepository donationRepository;
    private final CategoryRepository categoryRepository;
    private final InstitutionRepository institutionRepository;

    public DonationController(DonationRepository donationRepository, CategoryRepository categoryRepository, InstitutionRepository institutionRepository) {
        this.donationRepository = donationRepository;
        this.categoryRepository = categoryRepository;
        this.institutionRepository = institutionRepository;
    }


    //wyświetlanie formularza
    @GetMapping("/add")
    public String showDonationForm(Model model) {
        model.addAttribute("donation", new Donation());
        return "/formView";
    }

    //wysyłanie danych z formularza
    @PostMapping(value = "/add")
    public String donationForm(@Valid Donation donation, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "/formView";
        }
        donationRepository.save(donation);
        return "/formConfirmation";
    }

    @ModelAttribute("institutions")
    public List<Institution> institutionList() {
        return institutionRepository.findAll();
    }

    @ModelAttribute("categories")
    public List<Category> categoryList() {
        return categoryRepository.findAll();
    }


}
