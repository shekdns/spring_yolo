package kr.ync.service;

import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.ChartVO;
import kr.ync.domain.Criteria;
import kr.ync.mapper.ChartMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ChartServiceImpl implements ChartService {

	@Autowired
	private ChartMapper mapper;

	@Override
	public void uploadDB() {
		// TODO Auto-generated method stub

		// 차트 url
		String url = "https://www.melon.com/chart/index.htm";
		// 최신곡
		String url2 = "https://www.melon.com/new/index.htm";

		Document doc = null;
		Elements tmp;
		String name_temp = null;
		String singer_temp = null;
		String album_temp = null;
		String image_temp = null;
		int rank = 0;
		// 장르 코드
		// 1 : 차트 / 2 : 최신곡 / 3 : 발라드 / 4 : 댄스 / 5 : 랩,힙합 / 6 : 인디음악 / 7 : 트로트
		int gnrcode = 0;

		try {
			doc = Jsoup.connect(url).get();

		} catch (Exception e) {
			e.printStackTrace();
		}
		// 차트 1~100위
		Elements element = doc.select("div#tb_list").select("tr");

		// 차트 이미지
		Elements img_e = doc.select("div#tb_list").select("tr").select("img");

		// ArrayList<ChartVO> cvo = new ArrayList<>();
		for (int i = 0; i < 100; i++) {
			ChartVO cvo = new ChartVO();
			// 이름 가져오는 과정
			tmp = element.select("div.ellipsis.rank01");
			name_temp = tmp.get(i).text();

			// cvo.setName(name_temp);
			// 가수 가져오는 과정
			tmp = element.select("div.ellipsis.rank02").select("span");
			singer_temp = tmp.get(i).text();

			// 앨범 가져오는 과정
			tmp = element.select("div.ellipsis.rank03");
			album_temp = tmp.get(i).text();

			// 등수를 가져오는 과정
			rank++;
			// cvo.setRank(rank);
			// 이미지 가져오는 과정
			image_temp = img_e.get(i).attr("src");
			// cvo.setImg_path(image_temp);

			// 장르 코드
			gnrcode = 1;

			cvo.setC_rank(rank);
			cvo.setName(name_temp);
			cvo.setArtist(singer_temp);
			cvo.setAlbum(album_temp);
			cvo.setImg_path(image_temp);
			cvo.setGnrcode(gnrcode);

			mapper.uploadDB(cvo);

		}
		rank = 0;

		try {
			doc = Jsoup.connect(url2).get();

		} catch (Exception e) {
			e.printStackTrace();
		}

		// 장르 및 최신
		Elements element2 = doc.select("div#songList").select("tr");

		// 장르 최신
		Elements img_e2 = doc.select("div#songList").select("tr").select("img");

		for (int i = 0; i < 50; i++) {
			ChartVO cvo = new ChartVO();
			// 이름 가져오는 과정
			tmp = element2.select("div.ellipsis.rank01");
			name_temp = tmp.get(i).text();

			// cvo.setName(name_temp);
			// 가수 가져오는 과정
			tmp = element2.select("div.ellipsis.rank02").select("span");
			singer_temp = tmp.get(i).text();

			// 앨범 가져오는 과정
			tmp = element2.select("div.ellipsis.rank03");
			album_temp = tmp.get(i).text();

			// 등수를 가져오는 과정
			rank++;
			// cvo.setRank(rank);
			// 이미지 가져오는 과정
			image_temp = img_e2.get(i).attr("src");
			// cvo.setImg_path(image_temp);

			// 장르 코드
			gnrcode = 2;

			cvo.setC_rank(rank);
			cvo.setName(name_temp);
			cvo.setArtist(singer_temp);
			cvo.setAlbum(album_temp);
			cvo.setImg_path(image_temp);
			cvo.setGnrcode(gnrcode);

			mapper.uploadDB(cvo);
		}
		
		rank = 0;
		
		for (int i = 0; i < 7; i++) {
			
			try {
				int gnr = i + 1;
				// 장르 100 ~ 700
				String url3 = "https://www.melon.com/genre/song_list.htm?gnrCode=GN0" + gnr + "00";
				doc = Jsoup.connect(url3).get();
				rank = 0;
				Elements element3 = doc.select("div#songList").select("tr");

				// 장르 최신
				Elements img_e3 = doc.select("div#songList").select("tr").select("img");
				
				for (int j = 0; j < 50; j++) {
					ChartVO cvo = new ChartVO();
					// 이름 가져오는 과정
					tmp = element3.select("div.ellipsis.rank01");
					name_temp = tmp.get(j).text();

					// cvo.setName(name_temp);
					// 가수 가져오는 과정
					tmp = element3.select("div.ellipsis.rank02").select("span");
					singer_temp = tmp.get(j).text();

					// 앨범 가져오는 과정
					tmp = element3.select("div.ellipsis.rank03");
					album_temp = tmp.get(j).text();

					// 등수를 가져오는 과정
					rank++;
					// cvo.setRank(rank);
					// 이미지 가져오는 과정
					image_temp = img_e3.get(j).attr("src");
					// cvo.setImg_path(image_temp);

					// 장르 코드
					gnrcode = i + 3;

					cvo.setC_rank(rank);
					cvo.setName(name_temp);
					cvo.setArtist(singer_temp);
					cvo.setAlbum(album_temp);
					cvo.setImg_path(image_temp);
					cvo.setGnrcode(gnrcode);

					mapper.uploadDB(cvo);
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void updateDB() {
		// TODO Auto-generated method stub
		String url = "https://www.melon.com/chart/index.htm";
		// 최신곡
		String url2 = "https://www.melon.com/new/index.htm";
		Document doc = null;
		Elements tmp;
		String name_temp = null;
		String singer_temp = null;
		String album_temp = null;
		String image_temp = null;
		int rank = 0;
		// 장르 코드
		// 1 : 차트 / 2 : 최신곡 / 3 : 발라드 / 4 : 댄스 / 5 : 랩,힙합 / 6 : 인디음악 / 7 : 트로트
		int gnrcode = 0;

		try {
			doc = Jsoup.connect(url).get();

		} catch (Exception e) {
			e.printStackTrace();
		}
		// 1~30위
		Elements element = doc.select("div#tb_list").select("tr");

		// 이미지
		Elements img_e = doc.select("div#tb_list").select("tr").select("img");
		// ArrayList<ChartVO> cvo = new ArrayList<>();
		for (int i = 0; i < 100; i++) {
			ChartVO cvo = new ChartVO();
			// 이름 가져오는 과정
			tmp = element.select("div.ellipsis.rank01");
			name_temp = tmp.get(i).text();

			// 가수 가져오는 과정
			tmp = element.select("div.ellipsis.rank02").select("span");
			singer_temp = tmp.get(i).text();

			// 앨범 가져오는 과정
			tmp = element.select("div.ellipsis.rank03");
			album_temp = tmp.get(i).text();

			// 등수를 가져오는 과정
			rank++;

			// 이미지 가져오는 과정
			image_temp = img_e.get(i).attr("src");
			// 장르 코드
			gnrcode = 1;

			cvo.setC_rank(rank);
			cvo.setName(name_temp);
			cvo.setArtist(singer_temp);
			cvo.setAlbum(album_temp);
			cvo.setImg_path(image_temp);
			cvo.setGnrcode(gnrcode);

			mapper.updateDB(cvo);

		}

		try {
			doc = Jsoup.connect(url2).get();

		} catch (Exception e) {
			e.printStackTrace();
		}

		// 장르 및 최신
		Elements element2 = doc.select("div#songList").select("tr");

		// 장르 최신
		Elements img_e2 = doc.select("div#songList").select("tr").select("img");

		for (int i = 0; i < 50; i++) {
			ChartVO cvo = new ChartVO();
			// 이름 가져오는 과정
			tmp = element2.select("div.ellipsis.rank01");
			name_temp = tmp.get(i).text();

			// cvo.setName(name_temp);
			// 가수 가져오는 과정
			tmp = element2.select("div.ellipsis.rank02").select("span");
			singer_temp = tmp.get(i).text();

			// 앨범 가져오는 과정
			tmp = element2.select("div.ellipsis.rank03");
			album_temp = tmp.get(i).text();

			// 등수를 가져오는 과정
			rank++;
			// cvo.setRank(rank);
			// 이미지 가져오는 과정
			image_temp = img_e2.get(i).attr("src");
			// cvo.setImg_path(image_temp);

			// 장르 코드
			gnrcode = 2;

			cvo.setC_rank(rank);
			cvo.setName(name_temp);
			cvo.setArtist(singer_temp);
			cvo.setAlbum(album_temp);
			cvo.setImg_path(image_temp);
			cvo.setGnrcode(gnrcode);

			mapper.updateDB(cvo);
		}

		for (int i = 0; i < 7; i++) {

			try {
				int gnr = i + 1;
				// 장르 100 ~ 700
				String url3 = "https://www.melon.com/genre/song_list.htm?gnrCode=GN0" + gnr + "00";
				doc = Jsoup.connect(url3).get();
				rank = 0;
				// 장르 및 최신
				Elements element3 = doc.select("div#songList").select("tr");

				// 장르 최신
				Elements img_e3 = doc.select("div#songList").select("tr").select("img");
				for (int j = 0; j < 50; j++) {
					ChartVO cvo = new ChartVO();
					// 이름 가져오는 과정
					tmp = element3.select("div.ellipsis.rank01");
					name_temp = tmp.get(j).text();

					// cvo.setName(name_temp);
					// 가수 가져오는 과정
					tmp = element3.select("div.ellipsis.rank02").select("span");
					singer_temp = tmp.get(j).text();

					// 앨범 가져오는 과정
					tmp = element3.select("div.ellipsis.rank03");
					album_temp = tmp.get(j).text();

					// 등수를 가져오는 과정
					rank++;
					// cvo.setRank(rank);
					// 이미지 가져오는 과정
					image_temp = img_e3.get(j).attr("src");
					// cvo.setImg_path(image_temp);

					// 장르 코드
					gnrcode = i + 3;

					cvo.setC_rank(rank);
					cvo.setName(name_temp);
					cvo.setArtist(singer_temp);
					cvo.setAlbum(album_temp);
					cvo.setImg_path(image_temp);
					cvo.setGnrcode(gnrcode);

					mapper.updateDB(cvo);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

	}

	@Override
	public void clearDB() {
		// TODO Auto-generated method stub
		mapper.clearDB();
	}

	@Override
	public List<ChartVO> getList() {
		// TODO Auto-generated method stub

		log.info("getChartList................");

		return mapper.getList();
	}

	@Override
	public List<ChartVO> getListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub

		log.info("getChartList with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

	@Override
	public List<ChartVO> frontMainChart() {
		// TODO Auto-generated method stub

		return mapper.frontMainChart();
	}

	@Override
	public List<ChartVO> front_getList(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.front_getList(cri);
	}

}
