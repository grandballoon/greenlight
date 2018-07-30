class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)

    if @character.save
      redirect_to #TODO
    else
      render #TODO
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])

    if @character.update(character_params)
      redirect_to #TODO
    else
      render #TODO
    end
  end


private

def character_params
  params.require(:character).permit(:archetype, :catchphrase, :actor, :show)
end
end
