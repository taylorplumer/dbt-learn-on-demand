With fct_orders as (SELECT o.id as order_id,
      o.user_id as customer_id,
      p.amount as amount
FROM jaffle_shop.orders o
JOIN stripe.payment p 
ON o.id = p.orderid )

SELECT * FROM fct_orders 