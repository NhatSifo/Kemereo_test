-- INSERT INTO	kamereo.test (Channel,Category,GMV)
-- VALUES('3rd Party','Meat','0');


-- QUESTION 1a.
-- SELECT 
--     Channel, Category, MAX(GMV) AS GMV
-- FROM
--     kamereo.test
-- GROUP BY Channel;
-- SELECT DISTINCT
--     Channel,Category, MAX(GMV)
-- FROM
--     kamereo.test
-- GROUP BY channel
-- ORDER BY GMV DESC;


-- QUESTION B

SELECT A.CHANNEL AS Channel_1, B.CHANNEL AS Channel_2, A.Category, A.GMV AS GMV_1, B.GMV AS GMV_2,
    ROUND((A.GMV - B.GMV) / B.GMV, 2) AS Comparision
FROM
    kamereo.test A,
    kamereo.test B
WHERE
    A.CHANNEL = 'Horeca'
        AND B.CHANNEL = 'MT'
        AND A.Category= B.Category
ORDER BY A.CATEGORY;
