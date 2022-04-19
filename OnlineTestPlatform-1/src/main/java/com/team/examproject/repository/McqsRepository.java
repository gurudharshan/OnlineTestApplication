package com.team.examproject.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.team.examproject.entity.Mcq;


public interface McqsRepository extends JpaRepository<Mcq, Integer>{

	public List<Mcq> findByLvl(String lvl);
}
