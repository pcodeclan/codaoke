require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../client.rb')
require_relative('../karaoke_room.rb')

class TestClient < Minitest::Test
  #setup method for test data
  def setup
    @client1 = Client.new("Barry", 50, "Song 1")
    @client2 = Client.new("Julie", 50, "Song 1")
    @client3 = Client.new("Kovak", 50, "Song 1")
    @client4 = Client.new("Dumas", 50, "Song 1")
  end

  #testing methods which will return PASS
  def test_client_name()
    assert_equal("Barry",@client1.name())
  end

  def test_client_cash()
    assert_equal(50,@client1.cash())
  end

  def test_client_fav_song()
    assert_equal("Song 1",@client1.fav_song())
  end

end
