package service;

import dao.UserDAO;
import java.util.List;

import dao.UserDAO;
import dto.DonationDTO;
import dto.ProjectDTO;
import dto.UserDTO;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class UserService {
	final UserDAO userDAO;

	public UserDTO checkEmail(String user_email) {
		return userDAO.checkEmail(user_email);
	}
	
	public UserDTO checkSocial(String user_social) {
		return userDAO.checkSocial(user_social);
	}
	public UserDTO selectone(int user_idx) {
		return userDAO.selectone(user_idx);
	}
	
	public int userInsert(UserDTO dto) {
		return userDAO.userInsert(dto);
	}
	
	public int userUpdate(UserDTO dto) {
		return userDAO.userUpdate(dto);
	}
	
	public int userDelete(int idx) {
		return userDAO.userDelete(idx);
	}
	
	public int userPointUpdate(UserDTO dto) {
		return userDAO.userPointUpdate(dto);
	}

	
	  public UserDTO selectOne(int idx) {
		  return userDAO.selectOne(idx); 
		  
	  }
	  
	  public List<ProjectDTO> ProjectList(int userIdx) { 
		  // 실제로는 데이터베이스에서 프로젝트 목록을 조회하여 반환하는코드가 들어갑니다. 
		  List<ProjectDTO> list = userDAO.selectProjectList(userIdx);
//		  System.out.println(list); 
		  return list; 
	}
	  
	  // 후원 금액 
	  public List<DonationDTO> donationList() { 
		  List<DonationDTO> list = userDAO.selectdonationList(); 
		  return userDAO.selectdonationList(); 
	}
	 
}
