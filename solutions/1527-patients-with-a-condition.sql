-- 1527. Patients With a Condition
-- Author: Nico Van den Hooff
-- SQL Engine: MySQL
-- https://leetcode.com/problems/patients-with-a-condition/

SELECT patient_id, patient_name, conditions
FROM patients
WHERE conditions LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%'
;