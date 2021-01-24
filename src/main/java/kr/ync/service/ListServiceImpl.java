package kr.ync.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.ListVO;
import kr.ync.mapper.ListMapper;
import kr.ync.mapper.UserMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ListServiceImpl implements ListService{

	@Autowired
	private ListMapper mapper;
	
	@Autowired
	private SqlSessionTemplate listSqlSession;
	
	//마이리스트 리스트 추가
	@Override
	public int list_input(ListVO list) {
		// TODO Auto-generated method stub
		
		mapper = listSqlSession.getMapper(ListMapper.class);
		
		return mapper.insert(list);
	}
	//좋아요 표시
	@Override
	public int list_like(String id, int song_idx, int album_idx) {
		// TODO Auto-generated method stub
		
		mapper = listSqlSession.getMapper(ListMapper.class);
		
		return mapper.insert2(id, song_idx, album_idx);
	}
	//마이 페이지 리스트 목록
	@Override
	public List<ListVO> showList() {
		// TODO Auto-generated method stub
		return mapper.showList();
	}

	//좋아요 해제
	@Override
	public int like_delete(ListVO list) {
		// TODO Auto-generated method stub
		mapper = listSqlSession.getMapper(ListMapper.class);
		return mapper.like_delete(list);
	}
	
	//리스트에 있는 곡 유/무 판단
	@Override
	public int checkList(ListVO list) {
		// TODO Auto-generated method stub
		mapper = listSqlSession.getMapper(ListMapper.class);
		return mapper.checkList(list);
	}
	
	//리스트에 있는 곡 유/무 판단
	@Override
	public List<ListVO> checkList2(ListVO list) {
		// TODO Auto-generated method stub
		mapper = listSqlSession.getMapper(ListMapper.class);
		return mapper.checkList2(list);
	}
	
	//개인 리스트 조회 
	@Override
	public List<ListVO> getList(String id) {
		// TODO Auto-generated method stub
		return mapper.getList(id);
	}

}
