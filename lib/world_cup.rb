class WorldCup

  attr_reader :year, :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    active_teams = @teams.find_all { |team| team.eliminated == false}
    active_teams.map { |team| team.players_by_position(position)}.flatten
  end

  def all_players_by_position
    forwards = @teams.map { |team| team.players_by_position("forward")}.flatten
    midfielders = @teams.map { |team| team.players_by_position("midfielder")}.flatten
    defenders = @teams.map { |team| team.players_by_position("defender")}.flatten
    # forwards = active_players_by_position("forward")
    # midfielders = active_players_by_position("midfielder")
    # defenders = active_players_by_position("defender")
    { "forward" => forwards,
      "midfielder" => midfielders,
      "defender" => defenders}
  end
end
