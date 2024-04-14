SELECT *
FROM `dukedatathon.Cohorting.ventilationInterval`
WHERE stay_id NOT IN (
    SELECT DISTINCT p.stay_id
    FROM `dukedatathon.Cohorting.ventilationInterval` p
    JOIN `physionet-data.mimiciv_derived.ventilator_setting` m ON p.stay_id = m.stay_id
    WHERE m.respiratory_rate_spontaneous > 5
    AND m.charttime BETWEEN p.first_ventilation_time AND p.dayThreeTime
);
