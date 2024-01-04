INSERT
  INTO  MemberGrade
VALUES
  (1, '브론즈')
, (2, '골드')
, (3, '다이아')
, (4, '마스터')
, (5, '사업자');

SELECT * FROM membergrade;

SELECT * FROM wlop_member;
INSERT
  INTO wlop_Member
VALUES 
  ('parkjungman','1234', '박정만', '광주광역시 서구 쌍촌동',
   '010-4482-2349', 'park123@naver.com', '츄르도둑', '2021.01.01', 1, 1)
, ('yunjaeeun', 'yun123', '윤재은', '서울특별시 관악구 신림동',
   '010-2442-5020', 'yun123@naver.com', '마제소바남', '2023.12.18',999, 5)
, ('leebodeura', 'lee123', '이보드라', '4 Yawkey Way, Boston, MA 02215-3409',
   '010-3096-6369','lee123@gmail.com', '마틸다', '2024.01.04',2, 4)
, ('baekdonghyeon', 'baek123', '백동현','경기도 남양주시 무슨동',
   '010-4234-6905', 'baek123@yahoo.com', '운동갈꺼야', '2023.11.11', 3, 3)
, ('chosubbin', 'cho1234', '조수빈', '서울특별시 서대문구 신촌동', 
   '010-0995-6989','cho123@daum.net', '쥬라기월드', '2023.01.01', 4, 2)
, ('kimjaehyeon', 'kim123', '김재현', '경기도 의정부시 도봉구',
   '010-2340-5309','kim123@kakao.com', '닥쳐말포이', '2022.07.04', 5, 1 )
, ('seoseungyeop', 'seo123', '서습엽', '서울특별시 관악구 신림동',
   '010-2309-3838','seo@naver.com', '게임조아', '2023.07.04', 5, 5)
, ('gwakyungyeong','32sX@NLd!', '곽윤경', '광주광역시 서구 동천동',
   '010-6509-9038', 'v1hdfn@naver.com', '하태서리', '2021.07.03', 3, 1)
, ('kimgyurin', 'dH7bLvumz', '김규린', '서울특별시 관악구 신림동',
   '010-6037-8692', 'i8drit@naver.com', '정다랑어', '2023.12.28',2, 5)
, ('parkgyeongdeok', 'ksFRLpRZm', '박경덕', '서울특별시 종로구',
   '010-7421-0104','lmjava@gmail.com', '물복숭아', '2024.01.04',6, 4)
, ('parkgoeunn', 'bflaCVcJs', '박고은','경기도 양주시 덕계동',
   '010-1590-5234', 'fdxrt2@yahoo.com', '지하천척', '2023.1.11', 2, 3)
, ('baeseongmin', 'zY6kFKHbX', '배성민', '서울특별시 서대문구', 
   '010-1822-7931','mfk5gd@daum.net', '리카솔리', '2023.05.01', 0, 2);

SELECT * FROM information;
INSERT
  INTO information 
VALUES
  (NULL, '츄르맛집', '서울특별시 동작구 신대방동', '010-2341-1551', NOW(), 1, 'seoseungyeop', 1)
, (NULL, '개껌제빵소', '광주광역시 동구 서석동', '062-432-1555', NOW(), 2, 'yunjaeeun', 2)
, (NULL, '캣타워 호텔', '부산광역시 수영구 광안2동', '051-622-4251', NOW(), 3, 'seoseungyeop', 1)
, (NULL, '랩터 전문 병원', '서울특별시 관악구 신림동', '02-595-5891', NOW(), 4, 'yunjaeeun', 3 )
, (NULL, '강형욱 유치원', '경상북도 울릉군 울릉읍 저동리', '054-791-0701', NOW(), 3, 'seoseungyeop', 1);

SELECT * FROM memberadmin;
INSERT -- 회원 아이디, 사업자코드(1 = 사업자, 2 = 사업자X), 블랙코드(1 = 블랙, 2 = 블랙X), 사용여부코드(1 = 사용, 2 = 휴면 , 3 = 탈퇴) , 마지막 접속 날짜, 관리자 아이디
  INTO memberadmin
VALUES
  ('yunjeaeun', 1, 2, 1, '2024.01.04', 'admin01')
, ('kimjaehyeon', 2, 1, 1, '2023.07.04', 'admin01')
, ('parkjungman', 2, 2, 3, '2022.01.01', 'admin01')
, ('seoseungyeop', 1, 2, 1, '2022.01.01', 'admin01');

UPDATE information
   SET photo_code = 4
 WHERE info_code = 3;
 
 SELECT * FROM wlop_member;
INSERT
  INTO wlop_Member
VALUES 
  ('souju','JEjKL60P1', '소우주', '부산 해운대구 해운대해변로 264',
   '010-8983-2100', 'helloItsUnivers@naver.com', 'littleUnivers', '2021.09.03', 4, 1)
, ('sonselim', 'TewJnHAa', '손세림', '서울 용산구 남산공원길 105',
   '010-4231-7311', 'buy1005@naver.com', 'handselim', '2023.1.28',2, 5)
, ('songdongjun', 'VV2se44b', '송동준', '서울 종로구 사직로 161',
   '010-9022-5692','djunsg@gmail.com', '준동송', '2024.11.04',6, 4)
, ('shindaeyoung', 'l5klbbjA', '신대영','서울 종로구 세종대로 172',
   '010-4195-1293', 'Din1@yahoo.com', 'god대영', '2023.1.11', 1, 2)
, ('shindongho', 'ZrzL7SwA', '신동호', '경북 경주시 석굴암로 816', 
   '010-0242-1193','al8@daum.net', '신동ho', '2023.09.01', 0, 2)
, ('leegiyeon', 'MreapV1p', '이기연', '전남 여수시 여서동 산 33-1',
   '010-6560-4859', 'leieion@naver.com', '바늘사초', '2023.09.10',2, 5)
, ('leeyeone', 'qdGtnZ57', '이예원', '대구 북구 구암로 85',
   '010-3653-7100','beoele@gmail.com', '보우타리', '2023.12.06',1, 4)
, ('leejaeone', 'b95ZsXck', '이재원','인천 중구 차이나타운로 47',
   '010-8268-1086', 'je58392@yahoo.com', '벤조카인', '2023.08.02', 1, 3)
, ('leejunhyong', 'mVpqCGcM', '이준형', '강원 강릉시 경포로 365', 
   '010-8849-3460','829hhge@daum.net', '어파인군', '2023.07.12', 4, 2)
, ('limonjae', 'thrT2cDu', '임원재', '충남 보령시 미란다로 298',
   '010-2865-4614', 'oiomnnt8@naver.com', '다분안부', '2023.12.28',4, 1)
, ('jangminseok', 'wA1Z9bX8', '장민석', '서울 송파구 올림픽로 240',
   '010-5207-2296','1m0s11@gmail.com', '파라도스', '2024.03.03',3, 2)
, ('jeongwojin', 'IbF3UIkh', '정우진','강원 속초시 먹거리길 10',
   '010-3190-6588', 'krwink@yahoo.com', '파크스법', NOW(), 6, 2)
, ('jeongtaeone', 'GLA1Yd5a', '정태원', '대전 유성구 대덕대로 708', 
   '010-2857-6945','te6394@daum.net', '마이카나이트', NOW(), 4, 1)
, ('jihyeongeun', 'dH7bLvumz', '지현근', '전북 전주시 완산구 한옥마을길 16-5',
   '010-6363-9509', 'rj83n9n@naver.com','마른새우볶음', '2023.12.28',3, 1)
, ('choijongchan', 'g3pCGWQ8', '최종찬', '경기 남양주시 와부읍 자작나무로 142',
   '010-5238-6061','ciqfnl348@gmail.com', '메소포타미아', '2024.01.04',9, 2)
, ('hansohye', 'Kkz0V0pi', '한소혜','인천 연수구 아트센터대로 165',
   '010-5550-5912', 'f414mce3@yahoo.com', '가문비하늘소', NOW(), 8, 1)
, ('kimyoungseung', 'N2VU8eaT', '김용승', '전남 완도군 화조로 119', 
   '010-7434-8452','yun2489b@daum.net', 'DragonVicroty', '2023.12.18', 0, 5);
   
