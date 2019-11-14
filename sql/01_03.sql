#standardSQL
# 03: Percentage of select categories
SELECT 
  COUNTIF(category IN ('Information Technology', 'News and Media', 'Business', 'Shopping', 'Education', 'Entertainment', 'Finance and Banking', 'Search Engines and Portals', 'Travel', 'Government and Legal Organizations')) AS cnt,
  COUNT(category) AS total,
  ROUND(COUNTIF(category IN ('Information Technology', 'News and Media', 'Business', 'Shopping', 'Education', 'Entertainment', 'Finance and Banking', 'Search Engines and Portals', 'Travel', 'Government and Legal Organizations')) * 100/ COUNT(category), 2) AS pct
FROM 
  `httparchiveext.urls.20170315_urls`
