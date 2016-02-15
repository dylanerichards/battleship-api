class AddPlayersToGames < ActiveRecord::Migration
  def change
    add_column :games, :player1, :string
    add_column :games, :player2, :string
  end
end
