package kr.co.domain;

import java.util.List;

import lombok.Data;

@Data
public class ProductDTO {
	private Long p_no; // 상품번호
	private String p_name; // 상품명
	private String p_price; // 상품가격
	private String p_image; // 상품이미지명
	private List<UploadDTO> imageList; // 상세 이미지 정보
	private String p_creator; // 제작자명
	private String p_regdate; // 상품등록일
	private int p_readcount; //  상품조회수
	private String p_etc; // 기타사항

}
