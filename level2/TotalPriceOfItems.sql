-- ITEM_INFO 테이블에서 희귀도가 'LEGEND'인 아이템들의 가격의 총합을 구하는 SQL문을 작성해 주세요. 이때 컬럼명은 'TOTAL_PRICE'로 지정해 주세요.
SELECT SUM(PRICE) AS TOTAL_PRICE
  FROM ITEM_INFO
 WHERE RARITY LIKE 'LEGEND'

-- 느낀점: 레벨 2 문제 설정 잘못된 듯..