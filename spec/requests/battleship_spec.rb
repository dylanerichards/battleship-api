describe "Battleship API" do

  describe "POST #create" do
    it 'creates a game with the new player' do
      post "/games.json", player1: "player1"

      json = JSON.parse(response.body)

      expect(response).to be_success
      expect(json["player1"]).to eq "player1"
    end
  end

  describe "PUT #join" do
    it 'joins an existing game with player 2' do
      post "/games.json", player1: "player1"

      put "/games/1/join.json", player2: "player2"

      json = JSON.parse(response.body)
      expect(response).to be_success

      expect(json["player2"]).to eq "player2"

    end
  end
end
