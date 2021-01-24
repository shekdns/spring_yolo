package kr.ync.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;


import kr.ync.domain.UserVO;
import kr.ync.mapper.UserMapper;
import kr.ync.security.domain.CustomUser;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	
	@Setter(onMethod_ = {@Autowired} )
	private UserMapper userMapper;
		
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {

		log.warn("Load User By UserName : " + userName);

		// userName means userid
		UserVO user = userMapper.read(userName);

		log.warn("queried by user mapper: " + user);

//		return null;
		return user == null ? null : new CustomUser(user);
	}
	

}
