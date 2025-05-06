SELECT 
    rs.date_date,
    rs.orders_id,
    rs.revenue,
    rs.quantity,
    ROUND(rs.revenue - (rp.purchase_price * rs.quantity), 2) AS margin,
    ROUND(rp.purchase_price * rs.quantity, 2) AS purchase_cost

FROM {{ ref('stg_raw__sales') }} AS rs
LEFT JOIN {{ ref('stg_raw__product') }} AS rp 
  ON rs.products_id = rp.products_id



   