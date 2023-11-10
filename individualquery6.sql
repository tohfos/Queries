--Query 6

-- latency average = 1.764 ms
-- tps = 566.994737 (including connections establishing)
-- tps = 567.001003 (excluding connections establishing)
--total_plan_time = 2021.4036810000184
--total_exec_time =154197.62600499895


-- this query retrieves way too many records
select * from "Track" where "UnitPrice" = 0.99;

