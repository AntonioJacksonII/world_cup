require './lib/world_cup'
require './lib/team'
require './lib/player'
require 'minitest/autorun'
require 'minitest/pride'

class WorldCupTest < Minitest::Test

  def setup
    @france = Team.new("France")
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    @france.add_player(@mbappe)
    @france.add_player(@pogba)

    @croatia = Team.new("Croatia")
    @modric = Player.new({name: "Luka Modric", position: "midfielder"})
    @vida = Player.new({name: "Domagoj Vida", position: "defender"})
    @croatia.add_player(@modric)
    @croatia.add_player(@vida)
  end

  def test_world_cup_exists
    world_cup = WorldCup.new(2018, [@france, @croatia])

    assert_instance_of WorldCup, world_cup
  end

  def test_world_cup_year
    world_cup = WorldCup.new(2018, [@france, @croatia])

    assert_equal 2018, world_cup.year
  end

  def test_world_cup_teams
    world_cup = WorldCup.new(2018, [@france, @croatia])

    assert_equal [@france, @croatia], world_cup.teams
  end

  def test_active_players_by_position
    world_cup = WorldCup.new(2018, [@france, @croatia])

    assert_equal [@pogba, @modric], world_cup.active_players_by_position("midfielder")
  end

end
