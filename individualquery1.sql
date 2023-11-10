--Query 1


--hii
--hello


-- latency average = 0.647 ms
-- tps = 1545.672522 (including connections establishing)
-- tps = 1545.717480 (excluding connections establishing)

-- total_exec_time = 114460.59392400102
-- total_plan_time = 2905.8313840000146


-- created a partial/sparse index on album id as i have noticed that it would make more sense to have an index table that has all the album ids where composer is null as it would be smaller in size and just return all tracks related to all the albums that have a null composer. 
select * from "Track" where "Composer" is null;
--CREATE INDEX partial_AlbumId ON "Track" ("AlbumId") WHERE "Composer" IS NULL;

-- values after executing query:
-- latency average = 0.566 ms
-- tps = 1767.237871 (including connections establishing)
-- tps = 1767.304355 (excluding connections establishing)

-- total_exec_time = 194845.15346700174
-- total_plan_time = 6832.469555999914
-- idx_scan  = 100001
-- idx_tup_read = 97800978
-- idx_tup_fetch = 97800978
