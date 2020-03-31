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

end
