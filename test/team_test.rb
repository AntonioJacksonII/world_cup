require 'minitest/autorun'
require 'minitest/pride'
require './lib/team'
require './lib/player'

class TeamTest < Minitest::Test

  def test_team_exists
    team = Team.new("France")

    assert_instance_of Team, team
  end

  def test_team_country
    team = Team.new("France")

    assert_equal "France", team.country
  end

  def test_team_eliminated?
    team = Team.new("France")

    assert_equal false, team.eliminated?

    team.eliminated = true
    assert_equal true, team.eliminated?
  end

  def test_team_players
    team = Team.new("France")

    assert_equal [], team.players
  end

  def test_add_player
    team = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})

    team.add_player(mbappe)
    team.add_player(pogba)

    assert_equal [mbappe, pogba], team.players
  end

  def test_players_by_position
    team = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    team.add_player(mbappe)
    team.add_player(pogba)

    assert_equal [pogba], team.players_by_position("midfielder")
    assert_equal [], team.players_by_position("defender")
  end

end
