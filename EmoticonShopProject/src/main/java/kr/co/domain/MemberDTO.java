package kr.co.domain;

import lombok.Data;

@Data
public class MemberDTO {
	private Long m_no; // 회원번호
	private String m_id; // 회원id
	private String m_pw; // 회원pw
	private String m_pw2; // 회원pw check
	private String m_name; // 회원이름
	private String m_email; // 회원이메일
	private String m_point; // 회원보유포인트
	private int m_access; // 관리자: 1, 회원: 0

}
