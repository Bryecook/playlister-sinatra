Artist.destroy_all
Song.destroy_all
SongGenre.destroy_all
Genre.destroy_all

a1= Artist.create(name: "Donovan")
a2= Artist.create(name: "Brian")
a3= Artist.create(name: "Angelo")
a4= Artist.create(name: "Hadi")

s1= Song.create(name: "Chocolate City", artist_id: a1.id)
s2= Song.create(name: "Mothership Connection", artist_id: a1.id)
s3= Song.create(name: "P Funk", artist_id: a2.id)
s4= Song.create(name: "Flashlight", artist_id: a2.id)
s5= Song.create(name: "Maggot Brains", artist_id: a3.id)
s6= Song.create(name: "Give Up The Funk", artist_id: a3.id)
s7= Song.create(name: "Handcuffs", artist_id: a4.id)
s8= Song.create(name: "Big Footin", artist_id: a4.id)

g1= Genre.create(name: "Funk")
g2= Genre.create(name: "Funky")
g3= Genre.create(name: "Funkier")
g4= Genre.create(name: "Funkiest")

sg1= SongGenre.create(song_id: s1.id, genre_id: g1.id)
sg2= SongGenre.create(song_id: s1.id, genre_id: g3.id)
sg3= SongGenre.create(song_id: s2.id, genre_id: g4.id)
sg4= SongGenre.create(song_id: s2.id, genre_id: g2.id)
sg5= SongGenre.create(song_id: s3.id, genre_id: g2.id)
sg6= SongGenre.create(song_id: s4.id, genre_id: g4.id)
sg7= SongGenre.create(song_id: s4.id, genre_id: g1.id)
sg8= SongGenre.create(song_id: s5.id, genre_id: g2.id)
sg9= SongGenre.create(song_id: s6.id, genre_id: g2.id)
sg10= SongGenre.create(song_id: s7.id, genre_id: g2.id)
sg11= SongGenre.create(song_id: s8.id, genre_id: g2.id)
sg12= SongGenre.create(song_id: s8.id, genre_id: g4.id)