package com.example.springtea.Repository;

import com.example.springtea.Model.Tea;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

@Repository
public interface TeaRepository extends JpaRepository<Tea,String> {

    @Query("SELECT DISTINCT a.collection FROM Tea a")
    Set<String> findDistinctCollection();

    Set<Tea> getTeasByCollection(String collectionName);

    Tea getTeaByName(String name);

    @Query(value = "SELECT t.*,\n" +
            "       GROUP_CONCAT(DISTINCT k.name) AS keyword,\n" +
            "       GROUP_CONCAT(DISTINCT o.name)  AS origin\n" +
            "FROM tea.tea AS t \n" +
            "         INNER JOIN tea.tea_keyword tk on t.id = tk.tea_id\n" +
            "         INNER JOIN tea.keyword k on tk.keyword_id = k.id\n" +
            "         INNER JOIN tea.tea_origin ok on t.id = ok.tea_id\n" +
            "         INNER JOIN tea.origin o on ok.origin_id = o.id\n" +
            "WHERE\n" +
            "      t.name LIKE %:key% OR\n" +
            "      t.collection LIKE %:key% OR\n" +
            "      k.name LIKE %:key% OR\n" +
            "      o.name LIKE %:key%\n" +
            "GROUP BY t.id",nativeQuery = true)
    List<Tea> getTeasBySearch(@Param("key") String key);
}
