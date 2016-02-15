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

end
