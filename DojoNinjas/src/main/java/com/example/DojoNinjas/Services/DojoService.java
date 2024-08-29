package com.example.DojoNinjas.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.DojoNinjas.Models.Dojo;
import com.example.DojoNinjas.Repositories.DojoRepository;

@Service
public class DojoService {
    
    @Autowired
    private DojoRepository dojoRepository;

    public Dojo createDojo(Dojo dojo) {
        return dojoRepository.save(dojo);
    }

    public List<Dojo> findAllDojos() {
        return (List<Dojo>) dojoRepository.findAll();
    }

    public Dojo findDojoById(Long id) {
        Optional<Dojo> optionalDojo = dojoRepository.findById(id);
        return optionalDojo.orElse(null); 
    }
}
