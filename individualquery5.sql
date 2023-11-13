--Query 5

-- latency average = 0.672 ms
-- tps = 1487.740937 (including connections establishing)
-- tps = 1487.865432 (excluding connections establishing)
--total_plan_time =1877.2514399999968
--total_exec_time =54907.81521300036



select * from "Track" where "UnitPrice" != 0.99;
-- upon inspecting data we noticed that there are only 2 values for UnitPrice, 0.99 and 1.99 , with most of the 1.99 values belonging to MediaTypeId 3 which is the video so we indexed based on that ,the performance improved and the index was used
--create index idx_MediaTID on "Track" ("MediaTypeId") where "UnitPrice"!=0.99

-- latency average = 0.221 ms
-- tps = 4527.795857 (including connections establishing)
-- tps = 4528.820393 (excluding connections establishing)
--idx_scan = 100000
--idx_tup_fetch =21300000 
--ind_tup_read = 21300000



