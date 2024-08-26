package pl.coderslab.charity.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Entity
@Getter
@Setter
@AllArgsConstructor
@Table(name = "donations")
public class Donation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Min(value = 1)
    private int quantity;

    @ManyToMany
    @NotEmpty
    private List<Category> categories;

    @ManyToOne
    @NotNull
    private Institution institution;

    @NotBlank
    private String street;

    @NotBlank
    private String city;

    @NotBlank
    @Pattern(regexp = "[0-9]{2}-[0-9]{3}")
    private String zipCode;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @NotNull
    @Future
    private LocalDate pickUpDate;

    // @DateTimeFormat(pattern = "yyyy-MM-dd")
    @NotNull
    private LocalTime pickUpTime;

    @Length(max=100)
    private String pickUpComment;

    public Donation() {

    }

    public String toString() {
        return "Donations [id=" + id +
                ",ilość=" + quantity +
                ",kategoria=" + categories +
                ",instytucja=" + institution +
                ",ulica=" + street +
                ",miasto=" + city +
                ",kod_pocztowy=" + zipCode +
                ",data_odbioru=" + pickUpDate +
                ",czas_odbioru=" + pickUpTime +
                ",komentarz=" + pickUpComment + "]";
    }


}
