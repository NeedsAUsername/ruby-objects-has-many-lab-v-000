class Song
    attr_accessor :title, :artist

    @@all = []

    def initialize(name)
        @title = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        self.artist || nil
    end
end
