package kr.ync.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.ync.domain.Album_ReplyPageDTO;
import kr.ync.domain.Album_ReplyVO;
import kr.ync.domain.Artist_ReplyPageDTO;
import kr.ync.domain.Artist_ReplyVO;
import kr.ync.domain.Criteria;
import kr.ync.service.Album_ReplyService;
import lombok.extern.log4j.Log4j;

@RequestMapping("/album_replies/")
@RestController
@Log4j
public class Album_ReplyController {

	@Autowired
	private Album_ReplyService service;
	
		
			// 1. 앨범 댓글 등록 메소드
			@PreAuthorize("isAuthenticated()")
			@PostMapping(value = "/new", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
			public ResponseEntity<String> create(@RequestBody Album_ReplyVO reply) {

				log.info("Album_ReplyVO: " + reply);

				int insertCount = service.register(reply);

				log.info("Reply INSERT COUNT: " + insertCount);

				return insertCount == 1
						? new ResponseEntity<>("success", HttpStatus.OK)
						: new ResponseEntity<>("Fail!! 댓글 등록 중 오류 발생",HttpStatus.INTERNAL_SERVER_ERROR);
				
			}
			
			
			// 2. 앨범 댓글 조회 메소드
			@GetMapping(value = "/{album_reply_idx}", produces = { MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_VALUE })
			public ResponseEntity<Album_ReplyVO> get(@PathVariable("album_reply_idx") int album_reply_idx) {

				log.info("get: " + album_reply_idx);

				return new ResponseEntity<>(service.get(album_reply_idx), HttpStatus.OK);
			}
			
			// 3. 앨범 댓글 수정 메소드    현재 세션인 유저 아이디와 작성자 가 같아야됨   
			@PreAuthorize("principal.username == #reply.replyer")
			@RequestMapping(value = "/{album_reply_idx}", method = { RequestMethod.PUT, RequestMethod.PATCH },
							consumes = "application/json", produces = {	MediaType.TEXT_PLAIN_VALUE })
			public ResponseEntity<String> modify(@RequestBody Album_ReplyVO reply, @PathVariable(
					value = "album_reply_idx" , required=false) int album_reply_idx) {
				
				// @RequestBody 처리되는 data는 일반파라미터나 @PathVariable로 처리할 수 없다.
				reply.setAlbum_reply_idx(album_reply_idx);

				log.info("album_reply_idx: " + album_reply_idx);
				log.info("modify: " + reply);

				return service.modify(reply) == 1 
						? new ResponseEntity<>("success", HttpStatus.OK)
						: new ResponseEntity<>("Fail!! 댓글 수정 중 오류 발생", HttpStatus.INTERNAL_SERVER_ERROR);

			}
			
			// 4. 앨범 댓글 삭제 메소드    현재 세션인 유저 아이디와 작성자 가 같아야됨   
			@PreAuthorize("principal.username == #reply.replyer")
			@DeleteMapping(value = "/{album_reply_idx}", produces = { MediaType.TEXT_PLAIN_VALUE })
			public ResponseEntity<String> remove(@RequestBody Album_ReplyVO reply, @PathVariable("album_reply_idx") int album_reply_idx) {

				log.info("remove: " + album_reply_idx);
				log.info("replyer: " + reply.getReplyer());

				return service.remove(album_reply_idx) == 1
						? new ResponseEntity<>("success", HttpStatus.OK)
						: new ResponseEntity<>("Fail!! 댓글 삭제 중 오류 발생",HttpStatus.INTERNAL_SERVER_ERROR);

			}
			
		
			// 5. 앨범 댓글 페이징 처리된 댓글 목록을 가져오는 method
			@GetMapping(value = "/pages/{album_idx}/{page}", produces = { MediaType.APPLICATION_XML_VALUE,
																	MediaType.APPLICATION_JSON_VALUE })
			public ResponseEntity<Album_ReplyPageDTO> getList(@PathVariable("page") int page, @PathVariable("album_idx") 
						int album_idx) {

				Criteria cri = new Criteria(page, 10);
				
				log.info("get Reply List bno: " + album_idx);

				log.info("cri:" + cri);

				return new ResponseEntity<>(service.getListWithPaging(cri, album_idx), HttpStatus.OK);
			}
	
}
