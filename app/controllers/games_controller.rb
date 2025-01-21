class GamesController < ApplicationController
  def index
    @user = current_user
    @games = @user.games
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
  end

  private

  def game_params
    params.require(:game).permit(:title, :description)
  end
end
