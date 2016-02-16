class Game < ActiveRecord::Base
  def coordinates
    [].tap do |coords|
      %w(a b c d e f g h i j).each do |letter|
        (1..10).each do |num|
          coords << "#{letter}#{num}"
        end
      end
    end
  end

  def place_ships
    taken = []

    until board_is_filled_with(player1)
      coordinate = coordinates.sample
      taken << coordinate
      place_ship(player1, coordinate)
    end

    until board_is_filled_with(player2)
      coordinate = (coordinates - taken).sample
      place_ship(player2, coordinate)
    end
  end

  def nuke(coordinate, player)
    self.send("#{coordinate.to_sym}=", "Nuked by #{player}")
    self.save
  end

  def check_for_loser
    if all_ships_nuked_for(player1)
      "#{player1} loses!"
    elsif all_ships_nuked_for(player2)
      "#{player2} loses!"
    else
      "No loser yet."
    end
  end

  private

  def board_is_filled_with(player)
    self.attributes.values.count(player) == 6
  end

  def place_ship(player, coordinate)
    self.send("#{coordinate.to_sym}=", player)
    self.save
  end

  def all_ships_nuked_for(player)
    self.attributes.values.count(player) == 1
  end
end
