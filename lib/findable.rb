$artist = []
$song = []

module Findable

    def find_by_name(name)
        $artist.detect{|a| a.name == name}
      end
    
    def all
        $artist
    end


end