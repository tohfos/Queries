--Query 9

-- latency average = 1.489 ms
-- tps = 671.781577 (including connections establishing)
-- tps = 671.796736 (excluding connections establishing)

--total_plan_time = 31419.18220700006
--total_plan_time = 102152.2769230013



select p."Name", ar."Name", a."Title" from "Playlist" p inner join "PlaylistTrack" pt on p."PlaylistId" = pt."PlaylistId" 
inner join "Track" t on t."TrackId" = pt."TrackId" inner join "Album" a on a."AlbumId" = t."AlbumId" inner join "Artist" ar on ar."ArtistId" = a."ArtistId" 
where ar."Name" = 'Eric Clapton';
 
 --create index on "Track" using BTREE ("AlbumId")
 --we chose the AlbumId as an index as it  helps speed up the process of finding tracks based on the album they belong to.which improves the overall performance of your query, especially when looking for songs by a specific artist.
-- latency average = 1.352 ms
--tps = 739.665892 (including connections establishing)
--tps = 739.681549 (excluding connections establishing)




 
