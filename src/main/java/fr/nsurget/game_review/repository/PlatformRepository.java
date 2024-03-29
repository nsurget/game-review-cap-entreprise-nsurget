package fr.nsurget.game_review.repository;

import fr.nsurget.game_review.entity.Platform;
import fr.nsurget.game_review.repository.interfaces.EntityNameRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PlatformRepository extends JpaRepository<Platform, Long>, EntityNameRepository<Platform> {

}