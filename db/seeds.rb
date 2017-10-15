Photo.destroy_all
Song.destroy_all
Artist.destroy_all


foo_fighters          = Artist.create(name: "Foo Fighters")
nirvana               = Artist.create(name: "Nirvana")
queen                 = Artist.create(name: "Queen")

bohemian_rhapsody     = Song.create(name: "Bohemian Rhapsody", artist: queen)
i_want_to_break_free  = Song.create(name: "I want to break free", artist: queen)
everlong              = Song.create(name: "Everlong", artist: foo_fighters)
my_hero               = Song.create(name: "My hero", artist: foo_fighters)
smells                = Song.create(name: "Smells like teen spirit", artist: nirvana)

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dvukrvufi/image/upload/v1508080555/Queen_f3fjmt.jpg", artist: queen)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dvukrvufi/image/upload/v1508080555/Nirvana_pxhquc.jpg", artist: nirvana)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dvukrvufi/image/upload/v1508080555/Foo-fighters_lu8qlo.jpg", artist: foo_fighters)
