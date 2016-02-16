class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy, :join, :place_ships, :nuke]
  respond_to :json

  # GET /games.json
  def index
    @games = Game.all
  end

  # GET /games/1.json
  def show
    render json: @game
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games.json
  def create
    @game = Game.new(game_params)

    @game.player1 = params[:player1]

    if @game.save
      render json: @game, status: 200
    end
  end

  # PATCH/PUT /games/1/join.json
  def join
    @game.player2 = params[:player2]

    if @game.update(game_params)
      render json: @game, status: 200
    end
  end

  # PATCH/PUT /games/1.json
  def update
    if @game.update(game_params)
      render json: @game, status: 200
    end
  end

  # PATCH/PUT /games/1/place-ships.json
  def place_ships
    @game.place_ships
    @game.save
    render json: @game, status: 200
  end

  # PATCH/PUT /games/1/nuke.json
  def nuke
    @game.nuke(params[:coordinate], params[:player])
    render json: { message: "Nuked #{params[:coordinate]}. #{@game.check_for_loser}", game: @game }
  end

  # DELETE /games/1.json
  def destroy
    @game.destroy
    head :no_content
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.fetch(:game, {})
  end
end
