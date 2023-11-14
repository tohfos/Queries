--Query 6

-- latency average = 1.764 ms
-- tps = 566.994737 (including connections establishing)
-- tps = 567.001003 (excluding connections establishing)
--total_plan_time = 2021.4036810000184
--total_exec_time =154197.62600499895


 
select * from "Track" where "UnitPrice" = 0.99;
--create index UnitPrice2 on "Track"("UnitPrice") where ("UnitPrice")= 0.99
--we created a partial index as there was a condition on the UnitPrice 
--this query retrieves way too many records so creating an index on this query will not be efficient 
--however after creating the index:
--latency average = 2.537 ms
--tps = 394.188162 (including connections establishing)
--tps = 394.193902 (excluding connections establishing)

--After analyzing the performance metrics before and after creating the index for the query, it's evident that the introduced index did not result in the expected improvements. In fact, the latency average increased, indicating a longer average response time, and the transactions per second (TPS) decreased, reflecting a decline in overall throughput.

