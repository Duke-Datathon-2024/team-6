SELECT * 
FROM `dukedatathon.Cohorting.days` day
RIGHT JOIN `dukedatathon.Cohorting.ventilationInterval` venInt
on day.stay_id= venInt.stay_id
