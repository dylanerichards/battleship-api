class Game < ActiveRecord::Base
  def coordinates
    coords = []

    %w(a b c d e f g h i j).each do |letter|
      (1..10).each do |num|
        coords << "#{letter}#{num}"
      end
    end

    coords
  end

  def place_ships
    taken = []


    until board_is_filled_with(player1)
      coordinate = coordinates.sample
      taken << coordinate
      self.send("#{coordinate.to_sym}=", player1)
      self.save
    end

    until board_is_filled_with(player2)
      coordinate = (coordinates - taken).sample
      self.send("#{coordinate.to_sym}=", player2)
      self.save
    end
  end

  def nuke(coordinate, player)
    self.send("#{coordinate.to_sym}=", "Nuked by #{player}")

    self.save
  end

  def check_for_loser
    if self.attributes.values.count(player1) == 1
      "#{player1} loses!"
    elsif self.attributes.values.count(player2) == 1
      "#{player2} loses!"
    else
      "No loser yet."
    end
  end
  private

  def board_is_filled_with(player)
    self.attributes.values.count(player) == 6
  end
end
