--Query 9

-- latency average = 1.489 ms
-- tps = 671.781577 (including connections establishing)
-- tps = 671.796736 (excluding connections establishing)

--total_plan_time = 31419.18220700006
--total_plan_time = 102152.2769230013



select p."Name", ar."Name", a."Title" from "Playlist" p inner join "PlaylistTrack" pt on p."PlaylistId" = pt."PlaylistId" 
inner join "Track" t on t."TrackId" = pt."TrackId" inner join "Album" a on a."AlbumId" = t."AlbumId" inner join "Artist" ar on ar."ArtistId" = a."ArtistId" 
where ar."Name" = 'Eric Clapton';
--CREATE INDEX idx_artistName23 ON "Artist" USING HASH("Name");
--CREATE INDEX idx_playlistName24 ON "Playlist" USING HASH("Name");
--CREATE INDEX idx_albumTitle24 ON "Album" USING HASH("Title");

--latency average = 1.498 ms
--tps = 667.765037 (including connections establishing)
--tps = 667.777191 (excluding connections establishing)

--after many trials with using different indices in different ways, we determined that creating an index on non primary key column does not enhance the performance of the query.  
--as the indices created on the primary key of each table will be more efficient for this query so it's better to rely on them




 
