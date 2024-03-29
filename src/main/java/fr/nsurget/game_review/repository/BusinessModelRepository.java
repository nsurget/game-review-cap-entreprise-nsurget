package fr.nsurget.game_review.repository;

import fr.nsurget.game_review.entity.BusinessModel;
import fr.nsurget.game_review.repository.interfaces.EntityNameRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BusinessModelRepository extends JpaRepository<BusinessModel, Long>, EntityNameRepository<BusinessModel> {

}