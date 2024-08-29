package com.codingdojo.BookClub.Repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.BookClub.Models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {

	List<User> findAll();
	Optional<User> findByEmail(String email);
}