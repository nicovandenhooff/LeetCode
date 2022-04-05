-- Problem 175. Combine Two Tables
-- Author: Nico Van den Hooff
-- SQL Engine: MySQL
-- https://leetcode.com/problems/combine-two-tables/

SELECT p.firstName, p.lastName, a.city, a.state
FROM person p
LEFT OUTER JOIN Address a 
ON p.personId = a.personId
;
