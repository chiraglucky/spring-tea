package com.example.springtea.Controller;

import com.example.springtea.Model.Tea;
import com.example.springtea.Service.TeaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.*;


@RestController
@CrossOrigin
public class TeaController {

    @Autowired
    TeaService teaService;

    //get all the teas
    @GetMapping("/teas")
    public ResponseEntity<Object> getTea(){
        List<Tea> teas= this.teaService.getTeas();
        if(teas.isEmpty()) {
            return new ResponseEntity<>("Data Not Exist",HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(teas, HttpStatus.OK);
    }

    //get tea by tea name
    @GetMapping("/teas/{name}")
    public ResponseEntity<Object> getTeaByName(@PathVariable String name){
        Tea tea=this.teaService.getTeaByName(name);
        if(tea == null){
            return new ResponseEntity<>("Data Not Exist",HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(tea,HttpStatus.OK);
    }

    //adding tea
    @PostMapping("/teas")
    public ResponseEntity<Object> addTea(@RequestBody Tea tea){
        Tea t=this.teaService.addTea(tea);
        if(t!=null){
            return new ResponseEntity<>("Successfully Added",HttpStatus.CREATED);
        }
        return new ResponseEntity<>("Not Added",HttpStatus.BAD_REQUEST);
    }

    //updating tea
    @PutMapping("/teas/{teaId}")
    public ResponseEntity<Object> updateTea(@RequestBody Tea tea,@PathVariable String teaId){
        Tea t=this.teaService.updateTea(tea,teaId);
        if(t!=null) {
            return new ResponseEntity<>("Successfully Updated", HttpStatus.OK);
        }
        return new ResponseEntity<>("Not Modified",HttpStatus.NOT_MODIFIED);
    }

    //deleting tea
    @DeleteMapping("/teas/{teaId}")
    public ResponseEntity<Object> deleteTea(@PathVariable String teaId){
        Tea tea=this.teaService.deleteTea(teaId);
        if(tea!=null){
            return new ResponseEntity<>(tea,HttpStatus.OK);
        }
        return new ResponseEntity<>("Data Not Exist",HttpStatus.NOT_FOUND);
    }


    //get all collection
    @GetMapping("/teas/collections")
    public ResponseEntity<Object> getCollections(){
        Set<String> collection=this.teaService.getCollection();
        if(collection.isEmpty()){
            return new ResponseEntity<>("Data Not Exist",HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(collection,HttpStatus.OK);
    }

    //get all teas by collection name
    @GetMapping("/teas/collections/{collectionName}")
    public ResponseEntity<Object> getTeasByCollectionName(@PathVariable String collectionName){
        Set<Tea> teas=this.teaService.getTeasByCollectionName(collectionName);
        if(teas.isEmpty()){
            return new ResponseEntity<>("Data Not Exist",HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(teas,HttpStatus.OK);
    }

    //get all origins
    @GetMapping("/teas/origins")
    public ResponseEntity<Object> getOrigins(){
        Set<String> origins=this.teaService.getOrigin();
        if(origins.isEmpty()){
            return new ResponseEntity<>("Data Not Exist",HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(origins,HttpStatus.OK);
    }


    //get all teas by origin name
    @GetMapping("/teas/origins/{originName}")
    public ResponseEntity<Object> getTeasByOriginName(@PathVariable String originName){
        Set<Tea> teas=this.teaService.getTeasByOriginName(originName);
        if(teas.isEmpty()){
            return new ResponseEntity<>("Data Not Exist",HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(teas,HttpStatus.OK);
    }

    //get all keywords
    @GetMapping("/teas/keywords")
    public ResponseEntity<Object> getKeywords(){
        Set<String> keywords=this.teaService.getKeyword();
        if(keywords.isEmpty()){
            return new ResponseEntity<>("Data Not Exist",HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(keywords,HttpStatus.OK);
    }

    //get all teas by keyword name
    @GetMapping("/teas/keywords/{keywordName}")
    public ResponseEntity<Object> getTeasByKeywordName(@PathVariable String keywordName)
    {
        Set<Tea> teas=this.teaService.getTeasByKeywordName(keywordName);
        if(teas.isEmpty())
        {
            return new ResponseEntity<>("Data Not Exist",HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(teas,HttpStatus.OK);
    }

    //get all teas by searching
    @GetMapping("/teas/search/{key}")
    public ResponseEntity<Object> getTeasBySearching(@PathVariable String key){
        List<Tea> teas=this.teaService.getTeasBySearching(key);
        if(!teas.isEmpty()) {
            return new ResponseEntity<>(teas, HttpStatus.OK);
        }
        return new ResponseEntity<>("Error",HttpStatus.BAD_REQUEST);
    }

    //get collection of teas
    @GetMapping("/teas/offer")
    public ResponseEntity<Object> getOfferTea(){

        Map<String,Set<Tea>> collectionSet=new HashMap<>();
        Set<String> collections=this.teaService.getCollection();

        for (String collection:collections) {
            Set<Tea> teas=this.teaService.getTeasByCollectionName(collection);
            collectionSet.put(collection,teas);
        }

        return new ResponseEntity<>(collectionSet,HttpStatus.OK);
    }

}


//const fetchTea = async (searchString)=>{
//        const response = await axios.get(`http://localhost:8080/${searchString}`)
//        updateItemList(response)
//        }
