package co.grandcircus.springlab;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PartyRepository extends JpaRepository<Party,Long>{

	//List<PartyOption> findbyType(String string);

	void save(PartyOption partyOption);

	//List<PartyOption> findByTypeAndVotes(String string, int i);
	
}
