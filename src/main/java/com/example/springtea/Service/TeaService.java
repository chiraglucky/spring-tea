package com.example.springtea.Service;

import com.example.springtea.Model.Tea;
import com.example.springtea.Repository.KeywordRepository;
import com.example.springtea.Repository.OriginRepository;
import com.example.springtea.Repository.TeaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Set;

@Service
public class TeaService {

    @Autowired
    public TeaRepository teaRepository;

    @Autowired
    public KeywordRepository keywordsRepository;

    @Autowired
    public OriginRepository originRepository;

    //get all the teas
    public List<Tea> getTeas() {
        return this.teaRepository.findAll();
    }

    //get tea By name
    public Tea getTeaByName(String name){
        return this.teaRepository.getTeaByName(name);
    }

    //adding tea
    public Tea addTea(Tea tea) {
        return this.teaRepository.save(tea);
    }

    //updating tea
    public Tea updateTea(Tea tea,String teaId) {
        Tea t = this.teaRepository.getById(teaId);
        this.teaRepository.delete(t);
        return this.teaRepository.save(tea);
    }

    //deleting tea
    public Tea deleteTea(String teaId){
        Tea t=this.teaRepository.getById(teaId);
        this.teaRepository.delete(t);
        return t;
    }

    //get all collections
    public Set<String> getCollection(){
        return this.teaRepository.findDistinctCollection();
    }

    //get teas by collection name
    public Set<Tea> getTeasByCollectionName(String collectionName){
        return this.teaRepository.getTeasByCollection(collectionName);
    }

    //get all origins
    public Set<String> getOrigin(){
        return this.originRepository.findDistinctOrigin();
    }

    //get teas by origin name
    public Set<Tea> getTeasByOriginName(String originName){
        return this.originRepository.getOriginByName(originName).getTeas();
    }

    //get all keywords
    public Set<String> getKeyword(){
        return this.keywordsRepository.findDistinctKeyword();
    }

    //get teas by keyword name
    public Set<Tea> getTeasByKeywordName(String keywordName){
        return this.keywordsRepository.getKeywordByName(keywordName).getTeas();
    }

    //get teas by searching
    public List<Tea> getTeasBySearching(String key){
        return this.teaRepository.getTeasBySearch(key);
    }

//    //adding origin
//    public void addOrigin(Origin origin){
//        this.originRepository.save(origin);
//    }

//    public Set<Tea> getTeaByKeyword(){
////        return this.keywordsRepository.getById("201").getTeas();
//       return this.keywordsRepository.getKeywordByName("fresh").getTeas();
//    }
//


}
