class ActorsController < ApplicationController

  def index
    @actors = Actor.all
    render :index
  end

  def update
    @actor = Actor.find(params[:id])
    if @actor.update(actor_params)
      redirect_to #TODO
    else
      render #TODO
    end
  end

  private

  def actor_params
    params.require(:actor).permit(:name, :a_list, :characters, :shows, :producers, :episodes)
  end

end
