-- Problem 175. Combine Two Tables
-- Author: Nico Van den Hooff
-- https://leetcode.com/problems/combine-two-tables/

SELECT p.firstName, p.lastName, a.city, a.state
FROM Person p
LEFT OUTER JOIN Address a 
ON p.personId = a.personId
