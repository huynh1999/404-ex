package com.jwat.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;

import com.jwat.entity.NewEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Repository
public interface NewRepository extends JpaRepository<NewEntity, Long> {
	@Query("select p from NewEntity p where p.id= :id")
    NewEntity findById(@Param("id")long id);
	@Query("select p from NewEntity p where p.title LIKE %:title%")
	List<NewEntity> searchByTitleLike(@Param("title") String title);
	@Query("select p from NewEntity p where p.category.id=:categoryid order by p.id desc ")
    List<NewEntity> findByCategory(@Param("categoryid")long id,Pageable pageable);
    @Query("select p from NewEntity p order by p.id desc ")
    Page<NewEntity> findAll(Pageable pageable);
    Page<NewEntity> findByCategory(Pageable pageable);
    @Transactional
    @Modifying(clearAutomatically = true)
    @Query("update NewEntity p set p.view=p.view+1 where p.id=:id")
    void Count(@Param("id") Long id);
   @Query("select p from NewEntity p  order by p.view desc")
	List<NewEntity> report(Pageable pageable);
}
