#standardSQL
# 02: Percentage of websites by categories
SELECT 
  category,
  COUNT(category) AS freq,
  SUM(COUNT(0)) OVER() AS total,
  ROUND(COUNT(category) * 100/ SUM(COUNT(0)) OVER(), 2) AS pct
FROM 
  `httparchiveext.urls.20170315_urls`
GROUP BY
  category
ORDER BY
  freq DESC
