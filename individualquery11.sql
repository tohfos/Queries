--Query 11


-- latency average = 1.698 ms
-- tps = 588.944287 (including connections establishing)
-- tps = 588.961343 (excluding connections establishing)


--total_plan_time = 35126.60388499976

--total_exec_time = 112820.35953799858
select p."Name", a."Title" from "Playlist" p inner join "PlaylistTrack" pt on p."PlaylistId" = pt."PlaylistId" 
inner join "Track" t on t."TrackId" = pt."TrackId" inner join "Album" a on a."AlbumId" = t."AlbumId" inner join "Artist" ar on ar."ArtistId" = a."ArtistId" 
where ar."Name" = 'Eric Clapton' order by a."Title" ASC;


--create index idx_TRackId on "PlaylistTrack" using HASH("TrackId");
--create index idx_ALbum on "Track" using HASH("AlbumId");

-- we decided to create a hash index on the trackid and albumid columns of the playlisttrack and track tables respectively to improve the performance of the query, the default index on these keys is BTREE ,which in case of this query is not very beneficial hence we resorted to hash as it would help us with the join operation, this showed a significant improvement in the performance of the query as shown below.
-- latency average = 0.733 ms
-- tps = 1364.658881 (including connections establishing)
-- tps = 1364.704093 (excluding connections establishing)
