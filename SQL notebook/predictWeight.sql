SELECT 
    table.subject_id,
    table.stay_id,
    table.hadm_id,
    table.gender,
    table.height,
    CASE 
        WHEN gender = 'M' THEN ((height -152) * 0.9) + 50
        WHEN gender = 'F' THEN ((height -152) * 0.9) + 45
        ELSE NULL  -- Or any default value if gender is not specified
    END AS predicted_weight
FROM 
    `dukedatathon.genderHeight.heightGender` table
