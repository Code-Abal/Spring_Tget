package com.ssafy.tigetting.mapper;

import java.util.Optional;

import org.apache.ibatis.annotations.Mapper;

import com.ssafy.tigetting.user.entity.UserEntity;

@Mapper
public interface UserMapper {
    void save(UserEntity user);

    void modify(UserEntity user);

    Optional<UserEntity> findById(Long id);

    Optional<UserEntity> findByUsername(String username);

    Optional<UserEntity> findByEmail(String email);

    boolean existsByUsername(String username);

    boolean existsByEmail(String email);
}
