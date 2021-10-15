package com.example.springtea.Model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;

import javax.persistence.*;
import java.util.Set;

@Data
@EqualsAndHashCode(exclude = {"keywords"})
@NoArgsConstructor
@Getter
@Setter
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@Entity
public class Tea {
    @Id
    private String id;
    private String name;
    private String imageURL;
    private String brewTime;
    private String boilingTemperature;
    @Lob
    private String description;
    private String moreInfo;
    @Lob
    private String preparation;

    private String collection;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "tea_origin",
            joinColumns = @JoinColumn(name = "tea_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "origin_id", referencedColumnName = "id"))
    @JsonIgnoreProperties("teas")
    private Set<Origin> origins;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "tea_keyword",
            joinColumns = @JoinColumn(name = "tea_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "keyword_id", referencedColumnName = "id"))
    @JsonIgnoreProperties("teas")
    private Set<Keyword> keywords;

    public Tea(String id, String name, String imageURL, String moreInfo, String brewTime, String boilingTemperature, String description, String preparation, String collection, Set<Origin> origins, Keyword... keywords) {
        this.id = id;
        this.name = name;
        this.imageURL = imageURL;
        this.moreInfo = moreInfo;
        this.brewTime = brewTime;
        this.boilingTemperature = boilingTemperature;
        this.description = description;
        this.preparation = preparation;
        this.collection = collection;
        this.origins.forEach(x -> x.getTeas().add(this));
        this.keywords.forEach(x -> x.getTeas().add(this));
    }

}
