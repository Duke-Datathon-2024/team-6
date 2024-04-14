SELECT stay_id, MIN(pao2fio2ratio_vent) AS min_pao2fio2ratio_vent
FROM  `physionet-data.mimiciv_derived.sofa`
GROUP BY stay_id;
