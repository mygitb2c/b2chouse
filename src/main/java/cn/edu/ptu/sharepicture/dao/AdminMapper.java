package cn.edu.ptu.sharepicture.dao;

import org.apache.ibatis.annotations.Param;

public interface AdminMapper {

	String adminLogin(@Param(value = "email") String email, @Param(value = "password") String password);

}
