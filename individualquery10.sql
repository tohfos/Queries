--Query 10

-- latency average = 6.405 ms
-- tps = 156.123841 (including connections establishing)
-- tps = 156.124925 (excluding connections establishing)
--total_plan_time = 34144.372621000104
--total_exec_time = 592747.9026440068


select ar."Name", a."Title" from "Playlist" p inner join "PlaylistTrack" pt on p."PlaylistId" = pt."PlaylistId"
inner join "Track" t on t."TrackId" = pt."TrackId" inner join "Album" a on a."AlbumId" = t."AlbumId" inner join "Artist" ar on ar."ArtistId" = a."ArtistId" 
Group by a."Title", ar."Name";