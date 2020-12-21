class Song
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, artist=nil, genre=nil)
        @name = name
        self.artist = artist if artist
        self.genre = genre if genre
        save
    end

    def save
        @@all << self
    end

    def self.destroy_all
        @@all.clear
    end

    def self.count
        @@all.size
    end

    def self.find_by_name(name)
        @@all.detect{|artist| artist.name == name}
    end
end