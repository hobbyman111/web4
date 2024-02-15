package kr.co.mapper;

import java.util.List;

import kr.co.domain.UploadDTO;

public interface FileMapper {
	// 이미지 데이터 반환 (i_pno)
	public abstract List<UploadDTO> getImageList(Long i_pno);
	// 이미지 데이터 반환
	public abstract List<UploadDTO> getImageList1();

}
