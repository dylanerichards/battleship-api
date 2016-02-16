require 'rails_helper'

describe Game do
  let(:game) { described_class.new }

  describe "#coordinates" do
    it 'is an array of coordinates' do
      expect(game.coordinates).to be_an(Array)
    end

    it 'contains all of the coordinates' do
      coords = []

      %w(a b c d e f g h i j).each do |letter|
        (1..10).each do |num|
          coords << "#{letter}#{num}"
        end
      end

      coords.each do |coord|
        expect(game.coordinates.include?(coord)).to eq true
      end
    end
  end

  describe "#place_ships" do
    it 'places 5 ships on the board per player' do
      game.player1 = "hello"
      game.player2 = "world"

      game.place_ships

      expect(game.attributes.values.count("hello")).to eq 6
      expect(game.attributes.values.count("world")).to eq 6
    end
  end

  describe "#nuke" do
    it 'nukes the specified coordinate with the appropriate player' do
      game.nuke("a1", "hello")

      expect(game.a1).to eq "Nuked by hello"
    end
  end

  describe "#check_for_loser" do
    it 'returns the loser when there is one' do
      game.player1 = "hello"
      game.player2 = "world"

      game.place_ships

      occupied_by_player1 = []

      game.attributes.each do |attribute|
        occupied_by_player1 << attribute[0] if attribute[1] == "hello"
      end

      occupied_by_player1.delete("player1")

      occupied_by_player1.each do |coordinate|
        game.nuke(coordinate, "world")
      end

      expect(game.check_for_loser).to eq "hello loses!"
    end
  end
end
