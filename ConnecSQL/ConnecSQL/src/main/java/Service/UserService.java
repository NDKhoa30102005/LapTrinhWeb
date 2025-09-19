package Service;

import Model.User;

public interface UserService {
	User login(String username, String password);
	User findByUserName(String username);
	
	void insert(User user);
	boolean register(String username, String password, String email, String fullname, String phone);
	boolean checkExistEmail(String email);
	boolean checkExistUsername(String username);
	boolean checkExistPhone(String phone);
	User findByEmail(String email);

    boolean updatePasswordByEmail(String email, String newPassword);
}
