class Artist
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self

    end

    def add_song(song)
        @songs.push(song)
        song.artist = self
    end

    def songs
        @songs
    end

    def self.song_count
        @@all.length
    end

end
