package com.example.DojoNinjas.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.DojoNinjas.Models.Ninja;
import com.example.DojoNinjas.Repositories.NinjaRepository;

@Service
public class NinjaService {
    
    @Autowired
    private NinjaRepository ninjaRepository;

    public Ninja createNinja(Ninja ninja) {
        return ninjaRepository.save(ninja);
    }

    public List<Ninja> findAllNinjas() {
        return (List<Ninja>) ninjaRepository.findAll();
    }

}
