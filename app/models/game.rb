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
    until (self.attributes.values.count(player1)) == 6
      coordinate = coordinates.sample
      taken << coordinate
      self.send("#{coordinate.to_sym}=", player1)
      self.save
    end

    until (self.attributes.values.count(player2)) == 6
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
end
