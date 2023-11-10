--Query 8

select p."Name", ar."Name", a."Title" from "Playlist" p inner join "PlaylistTrack" pt on p."PlaylistId" = pt."PlaylistId" 
inner join "Track" t on t."TrackId" = pt."TrackId" inner join "Album" a on a."AlbumId" = t."AlbumId" inner join "Artist" ar on ar."ArtistId" = a."ArtistId" where p."Name" = 'Classic';