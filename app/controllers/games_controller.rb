class GamesController < ApplicationController
  def index
    created_games = Game.where(user_id: current_user.id)
    participating_games = Game.joins(:characters).where(characters: { user_id: current_user.id })

    @games = (created_games + participating_games).uniq
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @user = current_user
    @game.user = @user

    if @game.save
      redirect_to new_game_path(@game), notice: 'Game was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @game = Game.find(params[:id])
    @character = Character.new
  end

  private

  def game_params
    params.require(:game).permit(:title, :description)
  end
end
