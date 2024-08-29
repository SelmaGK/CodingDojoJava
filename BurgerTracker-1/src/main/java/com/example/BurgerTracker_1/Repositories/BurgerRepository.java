package com.example.BurgerTracker_1.Repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.BurgerTracker_1.Models.Burger;

@Repository
public interface BurgerRepository extends CrudRepository<Burger, Long> {
 List<Burger> findAll();
}
