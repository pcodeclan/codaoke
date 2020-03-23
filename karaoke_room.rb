require ('pry')
require ('pry-byebug')

class KaraokeRoom
  #Get methods for name
  attr_reader :name

  def initialize(name)#Constructor method
    @name = name
    @clients = []
    #@songs = []
  end

#  Get methods
  # def get_karaoke_name()
  #  @karaoke_name
  # end

  # def get_songs
  #   return @songs.map {|@songs| @songs}
  # end
  #End get methods

  #checks the client array for number of clients
  def client_count()
    #binding.pry
    return @clients.length()
  end

  #Adds client to karaoke room - passes a client parameter in
  def add_client(client)
    @clients.push(client)
  end

  #Removes client
  def remove_client(client)
    @clients.delete(client)
  end

  #Check total number of client in room by checking size of client array
  def client_count(client)
    @clients.size()
  end

end
