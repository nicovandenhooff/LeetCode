-- 1757. Recyclable and Low Fat Products
-- Author: Nico Van den Hooff
-- SQL Engine: MySQL
-- https://leetcode.com/problems/recyclable-and-low-fat-products/

SELECT product_id
FROM products
WHERE low_fats = 'Y' AND recyclable = 'Y'