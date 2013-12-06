
package org.musicalpatriots.service.endpoint;

import java.security.Principal;
import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebService;

import org.musicalpatriots.service.businesslogic.DomainLogic;
import org.musicalpatriots.service.businesslogic.RatingLogic;
import org.musicalpatriots.xml.entity.CompositionEntity;
import org.musicalpatriots.xml.entity.RatingEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/secure/composition")
public class CompositionService {
	
    @RequestMapping(value = "/title", method = RequestMethod.POST, headers = {"Accept=application/json"})
    public @ResponseBody List<CompositionEntity> findByTitleService(@RequestParam String title) {
    	System.out.println("in findby title service...");
    	DomainLogic dl = new DomainLogic();
    	return dl.findByTitle(title);
    }
    
    @RequestMapping(value = "/{number}", method = RequestMethod.GET, headers = {"Accept=application/json"})
    public @ResponseBody CompositionEntity getByNumber(@PathVariable String number) {
    	DomainLogic dl = new DomainLogic();
    	return dl.findById(number);
    }

    
    @RequestMapping(value = "/entity", method = RequestMethod.POST, headers = {"Accept=application/json"})
    public @ResponseBody List<CompositionEntity> findByAllParamsService(
                @RequestParam(defaultValue="") String author,
                @RequestParam(defaultValue="") String title,
                @RequestParam(defaultValue="") String era,
                @RequestParam(defaultValue="") String genre,
                @RequestParam(defaultValue="") String publisher) {
     DomainLogic dl = new DomainLogic();
     System.out.println("composition author: "+author);
     List<CompositionEntity> cl = dl.findByParams(author, title, era, genre, publisher);
     System.out.println("CL: "+cl.get(0).getAuthor());
     return cl;
    }
    
    @RequestMapping(value = "/userrating/{compositionId}", method = RequestMethod.GET, headers = {"Accept=application/json"})
    public @ResponseBody RatingEntity getUserRating(@PathVariable String compositionId) {
    	RatingLogic rl = new RatingLogic();
    	//Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    	Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    	String username;
    	if (principal instanceof UserDetails) {
    	  username = ((UserDetails)principal).getUsername();
    	} else {
    	  username = principal.toString();
    	}
    	if(principal==null) {
    		System.out.println("PRINCIPAL IS NULL.");
    		return new RatingEntity();
    	}
    	System.out.println("principal: "+username);
    	RatingEntity re = rl.findByUserRef(compositionId, "wward");
    	System.out.println("rater_ref: "+re.getRater_ref());
    	return re;
    }
}
