--Query 1

select * from "Track" where "Composer" is null;


-- latency average = 0.647 ms
-- tps = 1545.672522 (including connections establishing)
-- tps = 1545.717480 (excluding connections establishing)

-- total_exec_time = 114460.59392400102
-- total_plan_time = 2905.8313840000146


--we decided to create an index for the "AlbumId" column. This index only includes records where the "Composer" is null.
-- The idea is that this focused index will be smaller and quicker to search through. It's meant to speed up queries when we're looking for tracks related to albums with no specified composer. The goal is to make things more efficient by narrowing down the index to just the records that matter for these specific cases. 

--CREATE INDEX partial_AlbumId ON "Track" ("AlbumId") WHERE "Composer" IS NULL;

-- values after executing query:

-- latency average = 0.566 ms
-- tps = 1767.237871 (including connections establishing)
-- tps = 1767.304355 (excluding connections establishing)

-- idx_scan  = 100001
-- idx_tup_read = 97800978
-- idx_tup_fetch = 97800978
