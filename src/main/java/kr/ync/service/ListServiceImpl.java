package kr.ync.service;

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

	@Override
	public int list_input(ListVO list) {
		// TODO Auto-generated method stub
		
		mapper = listSqlSession.getMapper(ListMapper.class);
		
		return mapper.insert(list);
	}
	
	@Override
	public int list_like(String id, int song_idx, int album_idx) {
		// TODO Auto-generated method stub
		
		mapper = listSqlSession.getMapper(ListMapper.class);
		
		return mapper.insert2(id, song_idx, album_idx);
	}

}
