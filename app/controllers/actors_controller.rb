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

  def show
    @actor = Actor.find(params[:id])
    @reviews = ["#{@actor.name} is spellbinding in #{@actor.shows.sample.title}", "#{@actor.name} gives the performance of a lifetime in #{@actor.shows.sample.title}", "#{@actor.name} is back with a vengeance", "#{@actor.shows.sample.title} is the best #{@actor.name}'s been in years", "Mark my words: #{@actor.shows.sample.title} is the beginning of the #{@actor.name}aissance", "#{@actor.name} is sure to win a Daytime Emmy for #{@actor.shows.sample.title}", "#{@actor.name} sneaks up on you and floors you in #{@actor.shows.sample.title}", "#{@actor.name}. Is. Back.", "If you're not watching #{@actor.name} in #{@actor.shows.sample.title}, what are you even doing?", "One word for #{@actor.name}'s most recent performance: Superb", "If there's a stronger shoe-in for an Emmy than #{@actor.name} in #{@actor.shows.sample.title}, I don't know who it is", "#{@actor.name} is jaw-dropping", "Get ready for the return of #{@actor.name} to the A-list", "#{@actor.shows.sample.title} is the hit show of the summer", "There is no examination of our current moment more vital than #{@actor.shows.sample.title}", "Is #{@actor.name} the hottest thing in Hollywood?", "Watch out, Timothée Chalamet: #{@actor.name} is coming for your crown"]
  end

  private

  def actor_params
    params.require(:actor).permit(:name, :a_list, :characters, :shows, :producers, :episodes)
  end

end
