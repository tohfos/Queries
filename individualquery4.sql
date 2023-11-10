--Query 4
--latency average = 0.767 ms
-- tps = 1303.977223 (including connections establishing)
-- tps = 1304.010067 (excluding connections establishing)
--total_plan_time=9328.318131000055
--total_exec_time=56590.81903900062

select distinct p."Name" from "Playlist" p inner join "PlaylistTrack" pt on p."PlaylistId" = pt."PlaylistId" 
inner join "Track" t on t."TrackId" = pt."TrackId" where t."Composer" = 'AC/DC';

--create index idx_distinct_ACDC on "Track"("Composer") where "Composer"= 'AC/DC'


-- latency average = 0.560 ms
-- tps = 1785.313442 (including connections establishing)
-- tps = 1785.376543 (excluding connections establishing)
--total_plan_time=19808.908197000153
--total_exec_time=94725.06378799869
--idx_scan = 100000
--idx_tup_read =   800000
-- idx_tup_fetch = 0

