class Artist
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self

    end

    def add_song(song)
        self.songs << song
        song.artist = self
    end

    def add_song_by_name(song)
        song = Song.new(song)
        self.songs << song
        song.artist = self
    end

    def songs
        @songs
    end

    def self.song_count
        @@all.length
    end

end
