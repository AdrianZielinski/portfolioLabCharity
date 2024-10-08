package pl.coderslab.charity.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.charity.entity.Register;

@Repository
public interface RegisterRepository extends JpaRepository<Register, Long> {
}
