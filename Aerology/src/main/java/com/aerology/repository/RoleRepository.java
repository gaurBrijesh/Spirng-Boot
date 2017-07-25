package com.aerology.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.aerology.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}
