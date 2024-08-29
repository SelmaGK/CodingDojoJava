package com.example.DojoNinjas.Repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.DojoNinjas.Models.Dojo;

@Repository
public interface DojoRepository extends CrudRepository<Dojo, Long> {

}
