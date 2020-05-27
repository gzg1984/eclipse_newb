package admin.web;
 
import admin.domain.User;

public interface IUserService {
	public User getUserById(int userId);
}
