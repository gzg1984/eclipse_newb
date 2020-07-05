package admin.web;
 
import admin.domain.project;
import admin.domain.projectWithBLOBs;
import java.util.ArrayList;
import java.util.List;

public interface projectService {
	public List<projectWithBLOBs> getAllprojects();

}
