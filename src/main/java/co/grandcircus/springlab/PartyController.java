package co.grandcircus.springlab;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PartyController {
@Autowired
private PartyRepository partyRepo;
@Autowired
private PizzaRepository pizzaRepo;

@RequestMapping("/")
public String home(Model model) {
	List<Party>partyList=partyRepo.findAll();
	model.addAttribute("parties",partyList);
	return "parties-list";
	
}

	


@RequestMapping("/vote")
public String vote(@RequestParam("id")Long id,Model model) {
	List<PartyOption>pizza = pizzaRepo.findAll();
	
	model.addAttribute("partyId", id);
	model.addAttribute("pizzaOptions",pizza);
	return "/vote";
	
}
@RequestMapping("/vote/{id}")
public String placeVote(@PathVariable("id")Long id) {
	PartyOption   partyVote = pizzaRepo.findById(id).orElse(null);
	partyVote.setVotes(partyVote.getVotes() + 1);
	partyRepo.save(partyVote);
	return"redirect:/vote?id=" +partyVote.getName()+partyVote.getId();
	
}
@PostMapping("/vote-add")
public String add(PartyOption partyOption,@RequestParam Long id) {
	
	partyRepo.save(partyOption);
	
	
	
	
	return "/vote" ;
		
	
}
@RequestMapping("/review")
public String review(Model model) {
	List<PartyOption>pizza=pizzaRepo.findAll(Sort.by(Sort.Direction.DESC,"votes"));
	model.addAttribute("pizzaOptions",pizza);
	
	return "/review";
	
}

}
