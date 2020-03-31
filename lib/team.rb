class Team

  attr_reader :country

  def initialize(country)
    @country = country
    @eliminated = false
  end

  def eliminated?
    @eliminated
  end
end
