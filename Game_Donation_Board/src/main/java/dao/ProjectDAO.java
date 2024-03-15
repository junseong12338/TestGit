package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.AdminInfoDTO;
import dto.CategoryNumDTO;
import dto.ProjectDTO;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class ProjectDAO {
	
final SqlSession sqlSession;
	
	//프로젝트 시퀀스 번호 가져오기
	public int select_next_idx() {
		return sqlSession.selectOne("project.select_next_idx");
	}
	
	//프로젝트 등록
	public int insert_project(ProjectDTO dto) {
		return sqlSession.insert("project.insert_project",dto);
	}
	//프로젝트 업데이트
	public int update_project(ProjectDTO dto) {
		return sqlSession.update("project.project_update",dto);
	}
	
	//카테고리 삭제
	public int delete_categery(int idx) {
		return sqlSession.delete("project.category_delete",idx);
	}
	
	//프로젝트 한건 가져오기
	public ProjectDTO selectOne_project(int idx) {
		return sqlSession.selectOne("project.selectOne_project",idx);
	}
	
	//프로젝트 카테고리 등록 메서드
	   public int insert_categoryNum(CategoryNumDTO dto) {
	      return sqlSession.insert("project.insert_category",dto);
	   }
	
	//프로젝트가 가지고있는 카테고리넘버 가져오기
	public List<CategoryNumDTO> select_categoryNum(int idx) {
		return sqlSession.selectList("project.select_category",idx);
	}
	
	
	//------------------------------------------------------------------ 성현 project_list
	
	// 프로젝트 총 갯수 
	public int select_count(ProjectDTO dto) {
		return sqlSession.selectOne("project.project_count", dto);
	}
	
	// 프로젝트 총 리스트
	public List<ProjectDTO> selectList(ProjectDTO dto){
		return sqlSession.selectList("project.project_list", dto);
	}
	
	// user 테이블에 user_name 가져오기
	public String selectName(int user_idx) {
		return sqlSession.selectOne("project.user_name", user_idx);
	}
	
	// ----------------------------------------------------------------- 성현 detail
	
	// donation 테이블의 정보 가져오기 - sum (project_idx)
	public int select_donation(int project_idx) {
		return sqlSession.selectOne("project.donation", project_idx) == null ? 0 : sqlSession.selectOne("project.donation", project_idx);
	}
	
	// user 테이블의 정보 가져오기 (project_idx)
	public String select_name(int project_idx) {
		return sqlSession.selectOne("project.user_author", project_idx);
	}
	
	// category_name 테이블의 정보 가져오기 (project_idx)
	public List<String> selectList(int project_idx){
		return sqlSession.selectList("project.category_name", project_idx);
	}
	
	// like 테이블의 정보 가져오기 (project_idx)
	public int select_like(int project_idx) {
		return sqlSession.selectOne("project.like_cnt", project_idx);
	}
	
	// like 테이블에서 두개의 idx와 같은 행 개수 가져오기
	public int selectOne(HashMap<String, Object> map_idx) {
		return sqlSession.selectOne("project.map_idx", map_idx);
	}
	
	// insert heart
	public int insert_heart(HashMap<String, Object> map_idx) {
		return sqlSession.insert("project.insert_heart", map_idx);
	}
	
	// delete heart
	public int delete_heart(HashMap<String, Object> map_idx) {
		return sqlSession.insert("project.delete_heart", map_idx);
	}
	
	
	//---------------------------------------------------------------------------------------이준성
		
	public int project_wait_count(){
		return sqlSession.selectOne("project.project_wait_count");
	}

	public List<AdminInfoDTO> getRowTotal(HashMap<String, Integer> map){
		return sqlSession.selectList("project.getRowTotal", map);
	}
	public int updateStatus(int project_idx){
		return sqlSession.update("project.updateStatus",project_idx);
	}

	public String getUserName(int user_idx) {
		return sqlSession.selectOne("project.getUserName",user_idx);
	}

	public List<ProjectDTO> Main_limit_list(){
		return sqlSession.selectList("project.Main_limit_list");
	}
	


	
	

}
