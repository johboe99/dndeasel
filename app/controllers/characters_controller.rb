class CharactersController < ApplicationController
  def index
    @user = current_user
    @characters = @user.characters
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
    @game = Game.find(params[:game_id])
  end

  def create
    @character = Character.new(character_params)
    @user = current_user
    @game = Game.find(params[:game_id])
    @character.user = @user
    @character.game = @game

    if @character.save
      redirect_to new_game_character_path(@character), notice: 'Character was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit

  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to_characters_path
  end

  private

  def character_params
    params.require(:character).permit(:name, :classname, :level, :strength,
                                      :dexterity, :constitution, :wisdom,
                                      :intelligence, :charisma)
  end
end
