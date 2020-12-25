package test.java;
 
import javax.annotation.Resource;
 
import org.springframework.stereotype.Service;
 
import test.IDao.UserMapper;
import test.domain.User;
//import test.java.IUserService;
 
@Service("userService")
public class UserServiceImpl implements IUserService {
	@Resource
	private UserMapper userDao;

	public User getUserById(int userId) {
		return this.userDao.selectByPrimaryKey(userId);
	}
 
}

