package fr.nsurget.game_review.entity;

import fr.nsurget.game_review.entity.interfaces.SluggerInterface;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
public class Game implements SluggerInterface {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String description;

    @Column(nullable = false)
    private LocalDate publishedAt;

    private String image;

    @ManyToOne
    @JoinColumn(nullable = false)
    private Classification classification;

    @ManyToOne
    @JoinColumn(nullable = false)
    private Genre genre;

    @ManyToOne
    @JoinColumn(nullable = false)
    private Publisher publisher;

    @ManyToMany
    private List<Platform> platforms;

    @ManyToOne
    @JoinColumn(nullable = false)
    private BusinessModel businessModel;

    @OneToMany(mappedBy = "game")
    private List<Review> reviews;

    @ManyToOne
    @JoinColumn(nullable = false)   // modo de base on l'id User 1L et 2L (accesible avec le userRepository)
    private Moderator moderator;

    private String slug;

    @Override
    public String getField() {
        return name;
    }
}