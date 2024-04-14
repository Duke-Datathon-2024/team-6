SELECT icustays.subject_id, icustays.hadm_id, icustays.stay_id, icustays.gender, icustays.admission_age, height.height 
FROM `physionet-data.mimiciv_derived.icustay_detail` icustays
right JOIN `physionet-data.mimiciv_derived.height` height
on icustays.subject_id = height.subject_id


