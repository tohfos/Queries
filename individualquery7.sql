--Query 7

-- latency average = 7.293 ms
-- tps = 137.116750 (including connections establishing)
-- tps = 137.117218 (excluding connections establishing)

--total_plan_time = 34918.60359900026
--total_exec_time = 663689.9107730028

select p."Name", ar."Name", a."Title" from "Playlist" p inner join "PlaylistTrack" pt on p."PlaylistId" = pt."PlaylistId" 
inner join "Track" t on t."TrackId" = pt."TrackId" inner join "Album" a on a."AlbumId" = t."AlbumId" inner join "Artist" ar on ar."ArtistId" = a."ArtistId";

-- after many trials and errors, we found that the best way to optimize this query is to create an index on the join  columns which in this case are the Primary keys , which are already indexed by default in postgresql meaning any index we create will exauhst the same result in a more costy way, not to mention this query alone returns 8715 rows which is a lot of data to be indexed, so we decided to not create any index and leave it as it is, we also attempted to index the columns that are chosen from the join table and the index has not been used indicating that the planner sees a sequential scan as faster.
