SELECT * FROM `dukedatathon.Cohorting.greaterThanThreeDays` days
LEFT JOIN `dukedatathon.Cohorting.paoRatio` ratio
ON days.stay_id = ratio.stay_id
