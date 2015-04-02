SELECT st.name AS name, sum(feb.7d) - sum(jan.7d) AS diff_7d, sum(feb.30d) - sum(jan.30d) as diff_30d
FROM stations AS st 
INNER JOIN fares_jan18 AS jan 
INNER JOIN fares_feb1 AS feb
ON st.name = jan.station and jan.remote = feb.remote
WHERE line = "Broadway" 
GROUP BY st.name