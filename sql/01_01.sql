#standardSQL
# 01: Create list of URLs
# The list with ranks is saved in httparchiveext.urls.20170315
# The list with categories is saved in httparchiveext.urls.20170315_urls
SELECT 
  rank, 
  url 
FROM 
  `httparchive.summary_pages.2017_03_15_desktop`
WHERE
  rank <= 20000 AND
  reqAudio = 0 AND
  reqVideo = 0 AND
  bytesAudio = 0 AND
  bytesVideo = 0
ORDER BY rank
