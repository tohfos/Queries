--Query 10

-- latency average = 6.405 ms
-- tps = 156.123841 (including connections establishing)
-- tps = 156.124925 (excluding connections establishing)
--total_plan_time = 34144.372621000104
--total_exec_time = 592747.9026440068


select ar."Name", a."Title" from "Playlist" p inner join "PlaylistTrack" pt on p."PlaylistId" = pt."PlaylistId"
inner join "Track" t on t."TrackId" = pt."TrackId" inner join "Album" a on a."AlbumId" = t."AlbumId" inner join "Artist" ar on ar."ArtistId" = a."ArtistId" 
Group by a."Title", ar."Name";


-- as shown below we created a btree index on the artistID (Foreign Key) in the Album table which did really well in terms of usage with a good fetching rate , we used BTREE due to its balanced structure and its effieciency in terms of equality searching. 

-- CREATE index idx_artist_id ON "Album" ("ArtistId");

-- latency average = 5.483 ms
-- tps = 182.382907 (including connections establishing)
-- tps = 182.383647 (excluding connections establishing)