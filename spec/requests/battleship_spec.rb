describe "Battleship API" do
  describe "POST #create" do
    it 'creates a game with the new player' do
      post "/games.json", player1: "player1"

      json = JSON.parse(response.body)

      expect(response).to be_success
      expect(json["player1"]).to eq "player1"
    end
  end
end
