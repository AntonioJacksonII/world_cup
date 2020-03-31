class Player

attr_reader :player, :name, :position

  def initialize(player)
    @player = player
    @name = player[:name]
    @position = player[:position]
  end
end
