SELECT
    IcuStays.stay_id,
    MIN(v.starttime) AS first_ventilation_time
FROM
    `physionet-data.mimiciv_icu.icustays` IcuStays
LEFT JOIN
    `physionet-data.mimiciv_derived.ventilation` v ON IcuStays.stay_id = v.stay_id
GROUP BY
    IcuStays.stay_id;
