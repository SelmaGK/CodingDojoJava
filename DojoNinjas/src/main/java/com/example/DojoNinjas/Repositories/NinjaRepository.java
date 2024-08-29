package com.example.DojoNinjas.Repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.DojoNinjas.Models.Ninja;

@Repository
public interface NinjaRepository extends CrudRepository<Ninja, Long> {

}
