class AddCoordinatesToGame < ActiveRecord::Migration
  def change
    %w(a b c d e f g h i j).each do |letter|
      (1..10).each do |num|
        add_column :games, "#{letter}#{num}", :string
      end
    end
  end
end
