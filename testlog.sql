SELECT
		 *
  FROM wlop_member;

SELECT * FROM report;
SELECT * FROM report_type;  
SELECT * FROM report_status;
SELECT * FROM billboard; 

-- 신고자가 게시물 신고 버튼을 눌러 신고 작성
INSERT
  INTO report
VALUES
  (NULL, '강아지한테 벤치프레스를 억지로 시켰어요 ㅠㅠ', CURDATE(), 4, 1, 'baekdonghyeon', 'yunjaeeun', 4, NULL, NULL, NULL);
  
-- 관리자가 신고 내역 조회
SELECT * FROM report;

UPDATE report
   SET report_now_code = 2
 WHERE report_now_code = 1;

-- 관리자가 신고 내역 조회 후 처리 (신고 내용 중 하나는 기준에 부합하지 않아 기각)
SELECT * FROM report;

SELECT * FROM wlop_member;
UPDATE wlop_member
   SET report_num = report_num + 1
 WHERE member_id = 'baekdonghyeon';
 
 SELECT * FROM wlop_member;
UPDATE wlop_member
   SET report_num = report_num + 1
 WHERE member_id = 'kimjaehyeon';

 
SELECT * FROM wlop_member;
UPDATE wlop_member
   SET report_num = report_num + 1
 WHERE member_id = 'yunjaeeun';

UPDATE report
   SET report_now_code = 3
 WHERE report_now_code = 2;

