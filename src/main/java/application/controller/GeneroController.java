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
public class GeneroController {
    
    @Autowired
    private GeneroRepository generoRepository;

    @RequestMapping(value = "/")
    public String select(Model ui){
        ui.addAttribute("generos", generoRepository.findAll());
        
        return "generos/list";
    }

    @RequestMapping(value = "/insert")
    public String insert(){
        return "generos/formInsert";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("generoNome") String nome){
        Genero genero = new Genero();
        genero.setNome(nome);
        
        generoRepository.save(genero);

        return "redirect:/insert";
    }

    @RequestMapping(value = "/update")
    public String update(@RequestParam("id") long id, Model ui){
        Optional <Genero> resultado = generoRepository.findById(id);
        if(resultado.isPresent()){
            ui.addAttribute("genero", resultado.get() );
           
            return "generos/formUpdate";
        }

        return "redirect:/";
    }

    @RequestMapping(value ="/update", method=RequestMethod.POST)
    public String update(@RequestParam("id") long id, @RequestParam("nome") String nome){
        Optional <Genero> resultado = generoRepository.findById(id);
        if(resultado.isPresent()){
            resultado.get().setNome(nome);
            generoRepository.save(resultado.get());
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/delete")
    public String delete(@RequestParam("id") long id, Model ui){
        Optional <Genero> resultado = generoRepository.findById(id);
        if (resultado.isPresent()) {
            ui.addAttribute("genero", resultado.get());
            return "generos/formDelete";
        } 
        return "redirect:/";
    }

    @RequestMapping(value="/delete", method=RequestMethod.POST)
    public String delete(@RequestParam("id") long id){
        generoRepository.deleteById(id);
        
        return "redirect:/";
    }
}
