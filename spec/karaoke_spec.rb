require('minitest/autorun')
require('minitest/reporters')
require_relative('../client.rb')
require_relative('../karaoke_room.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestKaraokeRoom < Minitest::Test
  #Setup method for test data
  def setup()
    @karaoke_room1 = KaraokeRoom.new("Room 1")
    @client1 = Client.new("Barry",50,"Song 1")
    @client2 = Client.new("Julie",50,"Song 1")
    @client3 = Client.new("Kovak",50,"Song 1")
    @client4 = Client.new("Dumas",50,"Song 1")
  end

  #Basic tests for starting parameters
  #Test for can create karaoke room
  def test_can_create_karaoke_room()
    assert_equal(KaraokeRoom, @karaoke_room1.class())
  end #PASS

  def test_get_karaoke_name
    assert_equal("Room 1",@karaoke_room1.name())
  end

  # def test_get_songs
  #   result = get_songs(@karaoke_room1)
  #   expected_array = ["Song 1","Song 2", "Song 3"]
  #   assert_equal(expected_array, result)
  # end

  def test_add_client()
    @karaoke_room1.add_client(@client1)
    assert_equal(1, @karaoke_room1.client_count())
  end

  def test_remove_client()
    @karaoke_room1.add_client(@client1)
    @karaoke_room1.add_client(@client2)
    @karaoke_room1.add_client(@client3)
    @karaoke_room1.remove_client(@client3)
    assert_equal(2, @karaoke_room1.client_count())
  end





end
