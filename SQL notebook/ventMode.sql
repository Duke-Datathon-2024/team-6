select * from
   `physionet-data.mimiciv_derived.ventilator_setting`
where
ventilator_mode  in (
"PCV+Assist",
"PCV+",
"SIMV/PSV/AutoFlow",
"MMV/AutoFlow",
"CMV/AutoFlow",
"CMV",
"MMV/PSV",
"VOL/AC",
"SIMV/PRES",
"SIMV/PSV",
"SIMV/AutoFlow",
"SIMV/VOL",
"SIMV",
"(S) CMV",
"P-CMV",
"CMV/ASSIST",
"MMV/PSV/AutoFlow",
"CMV/ASSIST/AutoFlow")
