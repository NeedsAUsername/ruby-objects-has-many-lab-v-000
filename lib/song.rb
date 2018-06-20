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

end
