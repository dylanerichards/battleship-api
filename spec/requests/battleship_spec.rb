describe "Battleship API" do

  describe "POST /games.json" do
    it 'creates a game with the new player' do
      post "/games.json", player1: "player1"

      json = JSON.parse(response.body)

      expect(response).to be_success
      expect(json["player1"]).to eq "player1"
    end
  end

  describe "PUT /games/:id/join.json" do
    it 'joins an existing game with player 2' do
      post "/games.json", player1: "player1"

      put "/games/1/join.json", player2: "player2"

      json = JSON.parse(response.body)
      expect(response).to be_success

      expect(json["player2"]).to eq "player2"

    end
  end

  describe "PUT /games/:id/place-ships" do
    it 'places 10 ships on the board randomly, 5 per player' do
      pregame

      json = JSON.parse(response.body)
      expect(response).to be_success

      expect(json.values.count("player1")).to eq 6
      expect(json.values.count("player2")).to eq 6
    end
  end

  describe "PUT /games/:id/nuke?player1=foo&coordinate=a1" do
    it 'nukes the coordinate on behalf of the player' do
      pregame

      put "/games/1/nuke.json", player: "player1", coordinate: "a1"

      json = JSON.parse(response.body)
      expect(json["game"]["a1"]).to eq "Nuked by player1"
    end
  end

  private

  def pregame
    post "/games.json", player1: "player1"
    put "/games/1/join.json", player2: "player2"
    put "/games/1/place-ships.json"
  end
end
