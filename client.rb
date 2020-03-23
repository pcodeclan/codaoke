class Client
  #Get methods for name, cash, fav_song
  attr_reader :name, :cash, :fav_song

  def initialize(name, cash, fav_song)#Constructor method
    @name = name
    @cash = cash
    @fav_song = fav_song
  end
end
