-- BOOK 테이블에서 2021년에 출판된 '인문' 카테고리에 속하는 도서 리스트를 찾아서
-- 도서 ID(BOOK_ID), 출판일 (PUBLISHED_DATE)을 출력하는 SQL문을 작성해주세요.

SELECT BOOK_ID, DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK
WHERE PUBLISHED_DATE LIKE '2021%'
  AND CATEGORY LIKE '인문'
ORDER BY PUBLISHED_DATE
-- 날짜 포맷에 익숙하지 않아서 헤멨다. 뒤에 시간 떼고 출력하라는 말은 없었는데 문제 잘못된듯.