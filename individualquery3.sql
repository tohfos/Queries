--Query 3

-- latency average = 1.101 ms
-- tps = 907.862258 (including connections establishing)
-- tps = 907.912288 (excluding connections establishing)
--total_plan_time = 13207.338427999895
--total_exec_time = 82138.90729299918



select p."Name" from "Playlist" p inner join "PlaylistTrack" pt on p."PlaylistId" = pt."PlaylistId" 
inner join "Track" t on t."TrackId" = pt."TrackId" where t."Composer" = 'AC/DC';

--create index idx_shehata on "Track"("Composer") WHERE "Composer" = 'AC/DC';
-- partial index on composer column as it is the one with the condition , we chose this because the other primary keys are already indexed.
-- latency average = 0.620 ms
-- tps = 1611.902720 (including connections establishing)
-- tps = 1611.949607 (excluding connections establishing)
--idx_scan=100000
--idx_tup_read=800000
--idx_tup_fetch=0

