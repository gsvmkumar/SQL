-- Q194: Calculate the change in order amount between consecutive orders for every customer.

SELECT
    ORDER_ID,
    CUSTOMER_ID,
    TOTAL_AMOUNT,
    ABS(
    TOTAL_AMOUNT - LAG(TOTAL_AMOUNT) OVER (
        PARTITION BY CUSTOMER_ID
        ORDER BY ORDER_DATE
    ) 
    )AS CHANGE_IN_ORDER_AMOUNT
FROM orders;