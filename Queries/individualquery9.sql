--Query 9

-- latency average = 1.489 ms
-- tps = 671.781577 (including connections establishing)
-- tps = 671.796736 (excluding connections establishing)

--total_plan_time = 31419.18220700006
--total_plan_time = 102152.2769230013



select p."Name", ar."Name", a."Title" from "Playlist" p inner join "PlaylistTrack" pt on p."PlaylistId" = pt."PlaylistId" 
inner join "Track" t on t."TrackId" = pt."TrackId" inner join "Album" a on a."AlbumId" = t."AlbumId" inner join "Artist" ar on ar."ArtistId" = a."ArtistId" 
where ar."Name" = 'Eric Clapton';