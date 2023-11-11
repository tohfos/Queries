--Query 11


-- latency average = 1.698 ms
-- tps = 588.944287 (including connections establishing)
-- tps = 588.961343 (excluding connections establishing)


--total_plan_time = 35126.60388499976

--total_exec_time = 112820.35953799858
select p."Name", a."Title" from "Playlist" p inner join "PlaylistTrack" pt on p."PlaylistId" = pt."PlaylistId" 
inner join "Track" t on t."TrackId" = pt."TrackId" inner join "Album" a on a."AlbumId" = t."AlbumId" inner join "Artist" ar on ar."ArtistId" = a."ArtistId" 
where ar."Name" = 'Eric Clapton' order by a."Title" ASC;