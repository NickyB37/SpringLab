package co.grandcircus.springlab;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PizzaRepository extends JpaRepository<PartyOption,Long>{
	
}
