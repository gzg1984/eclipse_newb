package admin.web;
 
import java.util.List;

import javax.annotation.Resource;
 
import org.springframework.stereotype.Service;
 
import admin.IDao.projectMapper;
import admin.domain.project;
import admin.domain.projectWithBLOBs;
import admin.web.projectService;
 
@Service("projectService")
public class projectServiceImpl implements projectService {
	@Resource
	private projectMapper pDao;

	
	public List<projectWithBLOBs> getAllprojects(){
			return this.pDao.getAllprojects();
	}

}

