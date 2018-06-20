class Artist
    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        song = Song.new(song)
        song.artist = self
        @songs << song
    end

    def self.song_count
        @songs
    end

end
