class Song

    attr_accessor :artist, :name

    @@all = []

    def initialize (name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        Artist.all.select { |artist| artist.song == self }
    end

end