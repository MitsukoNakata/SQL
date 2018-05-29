SELECT
category_name,SUM(I.item_price) AS total_price
FROM
item I
INNER JOIN item_category C
 ON I.category_id = C.category_id
GROUP BY
 I.category_id
ORDER BY
item_price DESC;
 