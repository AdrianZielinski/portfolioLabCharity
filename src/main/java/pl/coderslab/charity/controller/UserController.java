package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import pl.coderslab.charity.repository.UserService;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

}