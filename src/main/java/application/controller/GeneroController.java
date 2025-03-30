package application.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Genero;
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

    @RequestMapping(value = "/insert")
    public String insert(){
        return "formInsert";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("generoNome") String nome){
        Genero genero = new Genero();
        genero.setNome(nome);
        
        generoRepository.save(genero);

        return "redirect:/generos/insert";
    }

    @RequestMapping(value = "/update")
    public String update(@RequestParam("id") long id, Model ui){
        Optional <Genero> resultado = generoRepository.findById(id);
        if(resultado.isPresent()){
            ui.addAttribute("genero", resultado.get() );
           
            return "/formUpdate";
        }

        return "redirect:/generos/list";

    }
}
