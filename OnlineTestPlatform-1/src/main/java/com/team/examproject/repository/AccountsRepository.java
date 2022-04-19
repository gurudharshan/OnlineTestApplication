package com.team.examproject.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.team.examproject.entity.Accounts;


public interface AccountsRepository extends JpaRepository<Accounts, Integer>{

	public List<Accounts> findByAccname(String accname);
	
	
	@Query("from Accounts where marks!=-1 order by marks desc ")
	public List<Accounts> getLeaderBoard();
}
