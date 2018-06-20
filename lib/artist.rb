class Artist
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self

    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        @songs << song
        song.artist = self
    end

    def songs
        @songs
    end

    def self.song_count
        counter = 0
        @@all.each do |song|
            if song
                counter += 1
            end
        end
        count - 5
    end

end
