package application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import application.repository.GeneroRepository;

@Controller
@RequestMapping(value = "/generos")
public class GeneroController {
    
    @Autowired
    private GeneroRepository generoRepository;

    @RequestMapping(value = "/list")
    public String select(Model ui){
        ui.addAttribute("generos", generoRepository.findAll());
        
        return "list";
    }
}
