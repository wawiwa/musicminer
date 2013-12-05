
package org.musicalpatriots.service.endpoint;

import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebService;

import org.musicalpatriots.service.businesslogic.DomainLogic;
import org.musicalpatriots.xml.entity.CompositionEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/composition")
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
     return dl.findByParams(author, title, era, genre, publisher);
    }
}
