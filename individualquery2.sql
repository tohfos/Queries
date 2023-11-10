--Query 2

-- latency average = 1.654 ms
-- tps = 604.628025 (including connections establishing)
-- tps = 604.645978 (excluding connections establishing)

-- total_exec_time = 144359.08562099922
-- total_plan_time =2234.234208999961


select * from "Track" where "Composer" is not null;

--create index idx_btree2 on "Track" USING Hash("Composer") 
-- latency average = 1.244 ms
-- tps = 803.733036 (including connections establishing)
-- tps = 803.744891 (excluding connections establishing)





