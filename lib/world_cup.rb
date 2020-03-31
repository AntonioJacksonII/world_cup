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
end
