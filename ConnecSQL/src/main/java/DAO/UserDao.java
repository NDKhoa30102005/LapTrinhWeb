package DAO;

import Model.User;

public interface UserDao {
	User findByUserName (String username);
}
