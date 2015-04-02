SELECT st.name AS name, sum(feb.ff) - sum(jan.ff) AS diff_feb1_jan18
FROM stations AS st 
INNER JOIN fares_jan18 AS jan 
INNER JOIN fares_feb1 AS feb
ON st.name = jan.station and jan.remote = feb.remote
WHERE line = "Broadway" 
GROUP BY st.name