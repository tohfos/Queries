--Query 4
-- latency average = 1.086 ms
-- tps = 920.838986 (including connections establishing)
-- tps = 920.881338 (excluding connections establishing)

--total_plan_time=46688.69179900058
--total_exec_time=232715.9106040029

select distinct p."Name" from "Playlist" p inner join "PlaylistTrack" pt on p."PlaylistId" = pt."PlaylistId" 
inner join "Track" t on t."TrackId" = pt."TrackId" where t."Composer" = 'AC/DC';

--create index idx_distinct_ACDC on "Track"("Composer") where "Composer"= 'AC/DC'

--In conclusion it is clear that the performance improved as the latency average decreased and the tps increased meaning our index has optimized performance ,it is a partial index on the Composer column which retrieves the subset of data where Composer is ACDC, we chose this index because it helps with specific queries such as this one.

-- latency average = 0.861 ms
-- tps = 1161.425695 (including connections establishing)
-- tps = 1161.469999 (excluding connections establishing)

--idx_scan = 100000
--idx_tup_read = 800000
-- idx_tup_fetch = 0

