SELECT st.lat AS lat, st.lng AS lng, sum(jan.ff) AS ff
FROM stations AS st 
INNER JOIN fares_jan18 AS jan 
ON st.name = jan.station
WHERE line = "Broadway" 
GROUP BY st.name
ORDER BY sum(jan.ff) DESC