--Query 8

-- latency average = 0.452 ms
-- tps = 2213.226679 (including connections establishing)
-- tps = 2213.367243 (excluding connections establishing)
--total_plan_time = 29720.08122399984
--total_exec_time = 706.1870939999924


select p."Name", ar."Name", a."Title" from "Playlist" p inner join "PlaylistTrack" pt on p."PlaylistId" = pt."PlaylistId" 
inner join "Track" t on t."TrackId" = pt."TrackId" inner join "Album" a on a."AlbumId" = t."AlbumId" inner join "Artist" ar on ar."ArtistId" = a."ArtistId" where p."Name" = 'Classic';

-- after running the query and observing the returned data we noticed that the index will never be used as no records satisfy this query , however for future DB insertions we recommend to use the index below

--create index idx_playlistName on "Playlist" using HASH("Name") 


-- we used HASH index over partial in case any future query looked for anything other than 'Classic' , also it is good practice to place the index on the independant predicate that we use on our condition

-- latency average = 0.589 ms
-- tps = 1696.629084 (including connections establishing)
-- tps = 1696.752045 (excluding connections establishing)
