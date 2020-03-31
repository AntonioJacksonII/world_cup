class Team

  attr_reader :country
  attr_accessor :eliminated, :players

  def initialize(country)
    @country = country
    @eliminated = false
    @players = []
  end

  def eliminated?
    @eliminated
  end
end
