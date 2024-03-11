package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.CategoryNumDTO;
import dto.ProjectDTO;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class ProjectDAO {
	
	final SqlSession sqlSession;
	
	public int select_idx() {
		return sqlSession.selectOne("project.select_idx");
	}
	
	public int insert_project(ProjectDTO dto) {
		return sqlSession.insert("project.insert_project",dto);
	}
	
	public int select_idx(String project_content) {
		return sqlSession.selectOne("project.select_idx",project_content);
	}
	
	public ProjectDTO selectOne_project(int idx) {
		return sqlSession.selectOne("project.selectOne_project",idx);
	}
	
	//프로젝트 카테고리 등록 메서드
	   public int insert_categoryNum(CategoryNumDTO dto) {
	      return sqlSession.insert("project.insert_category",dto);
	   }
	
	//------------------------------------------------------------------ 성현
	

	public int select_count(ProjectDTO dto) {
		return sqlSession.selectOne("project.project_count", dto);
	}
	

	public List<ProjectDTO> selectList(ProjectDTO dto){
		return sqlSession.selectList("project.project_list", dto);
	}
	
	// user 테이블에 user_name 가져오기
	public String selectName(int user_idx) {
		return sqlSession.selectOne("project.user_name", user_idx);
	}
	
	
}
