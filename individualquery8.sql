--Query 8

-- latency average = 0.452 ms
-- tps = 2213.226679 (including connections establishing)
-- tps = 2213.367243 (excluding connections establishing)
--total_plan_time = 29720.08122399984
--total_exec_time = 706.1870939999924


select p."Name", ar."Name", a."Title" from "Playlist" p inner join "PlaylistTrack" pt on p."PlaylistId" = pt."PlaylistId" 
inner join "Track" t on t."TrackId" = pt."TrackId" inner join "Album" a on a."AlbumId" = t."AlbumId" inner join "Artist" ar on ar."ArtistId" = a."ArtistId" where p."Name" = 'Classic';