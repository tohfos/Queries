--Query 7

-- latency average = 7.293 ms
-- tps = 137.116750 (including connections establishing)
-- tps = 137.117218 (excluding connections establishing)

--total_plan_time = 34918.60359900026
--total_exec_time = 663689.9107730028

select p."Name", ar."Name", a."Title" from "Playlist" p inner join "PlaylistTrack" pt on p."PlaylistId" = pt."PlaylistId" 
inner join "Track" t on t."TrackId" = pt."TrackId" inner join "Album" a on a."AlbumId" = t."AlbumId" inner join "Artist" ar on ar."ArtistId" = a."ArtistId";
