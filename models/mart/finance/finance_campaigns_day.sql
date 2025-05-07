SELECT 
*,
(operational_margin - ads_cost) AS ads_margin
FROM {{ ref('finance_days') }} AS fd
LEFT JOIN {{ ref('int_campaigns_day') }} AS cd
USING (date_date)
