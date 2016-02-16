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
end
