require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'

class PlayerTest < Minitest::Test

  def test_player_exists
    player = Player.new({name: "Luka Modric", position: "midfielder"})

    assert_equal "Luka Modric", player.name
  end
end
