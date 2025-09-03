package Service.ServiceImplement;

import DAO.UserDao;
import DAO.DAOImplement.UserDaoImpl;
import Model.User;
import Service.UserService;

public class UserServiceImpl implements UserService {
	UserDao userDao = new UserDaoImpl();

	@Override
	public User login(String username, String password) {
		User user = this.findByUserName(username);
		if (user != null && password.equals(user.getPassWord())) {
			return user;
		}
		return null;
	}

	@Override
	public User findByUserName(String username) {
		return userDao.findByUserName(username);
	}

	public boolean register(String username, String password, String email, String fullname, String phone) {
		if (userDao.checkExistUsername(username)) {
			return false;
		}
		
		try {
			User user = new User();
			user.setUserName(username);
			user.setPassWord(password);
			user.setEmail(email); // ✅ Quan trọng
			user.setFullName(fullname);
			user.setPhone(phone);
			user.setAvatar(null); // hoặc 1 avatar mặc định
			user.setRoleid(2); // user bình thường
			user.setCreatedDate(new java.sql.Date(System.currentTimeMillis()));

			userDao.insert(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean checkExistEmail(String email) {
		return userDao.checkExistEmail(email);
	}

	public boolean checkExistUsername(String username) {
		return userDao.checkExistUsername(username);
	}

	@Override
	public boolean checkExistPhone(String phone) {
		return userDao.checkExistPhone(phone);
	}

	@Override
	public void insert(User user) {
		userDao.insert(user);
	}
}
