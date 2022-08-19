class Song
    attr_accessor :name, :artist, :genre
        @@genres = []
        @@artists = []
        @@count = 0

    def initialize(name, artist, genre)
        @name= name
        @artist= artist
        @genre= genre
        @@artists << artist
        @@genres << genre
        @@count += 1
    end
    def self.count
        @@count
    end
    def self.genres
      @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end
    def self.genre_count
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end
end