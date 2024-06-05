-- USED_GOODS_BOARD와 USED_GOODS_FILE 테이블에서 조회수가 가장 높은 중고거래 게시물에 대한 첨부파일 경로를 조회하는 SQL문을 작성해주세요.
-- 첨부파일 경로는 FILE ID를 기준으로 내림차순 정렬해주세요.
-- 기본적인 파일경로는 /home/grep/src/ 이며, 게시글 ID를 기준으로 디렉토리가 구분되고, 파일이름은 파일 ID, 파일 이름, 파일 확장자로 구성되도록 출력해주세요. 조회수가 가장 높은 게시물은 하나만 존재합니다.
WITH TOP_VIEW AS (
    SELECT BOARD_ID
      FROM USED_GOODS_BOARD
     ORDER BY VIEWS DESC
     LIMIT 1
)

SELECT CONCAT("/home/grep/src/", BOARD_ID, "/", FILE_ID, FILE_NAME, FILE_EXT) AS FILE_PATH
  FROM USED_GOODS_FILE
 WHERE BOARD_ID = (SELECT BOARD_ID FROM TOP_VIEW)
 ORDER BY FILE_ID DESC

-- 느낀점: CTE를 사용하니까 많이 복잡하지 않았다. 저번에 못 푼 문제..