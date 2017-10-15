Song.destroy_all
Artist.destroy_all

queen                 = Artist.create(name: "Queen")
foo_fighters          = Artist.create(name: "Foo Fighters")
nirvana               = Artist.create(name: "Nirvana")

bohemian_rhapsody     = Song.create(name: "Bohemian Rhapsody", artist: queen)
i_want_to_break_free  = Song.create(name: "I want to break free", artist: queen)
everlong              = Song.create(name: "Everlong", artist: foo_fighters)
my_hero               = Song.create(name: "My hero", artist: foo_fighters)
smells                = Song.create(name: "Smells like teen spirit", artist: nirvana)
