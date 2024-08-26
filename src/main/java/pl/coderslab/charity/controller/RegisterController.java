package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.entity.Register;
import pl.coderslab.charity.repository.RegisterRepository;

@Controller
@RequestMapping("/user")
public class RegisterController {

    private final RegisterRepository registerRepository;

    public RegisterController(RegisterRepository registerRepository) {
        this.registerRepository = registerRepository;
    }

    //wyświetlanie formularza
    @GetMapping("/register")
    public String showRegisterForm(Model model) {
        model.addAttribute("register", new Register());
        return "/register";
    }

    //wysyłanie danych z formularza
    @PostMapping(value = "/register")
    public String registerForm(@ModelAttribute Register register) {
        registerRepository.save(register);
        return "udało się założyć konto";
    }
}
