class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(episode_params)

    if @episode.save
      redirect_to #TODO
    else
      render #TODO
    end
    end

    def edit
      @episode = Episode.find(params[:id])
    end

    def update
      @episode = Episode.find(params[:id])

      if @episode.update(episode_params)
        redirect_to #TODO
      else
        render #TODO
      end
    end

    def destroy
      @episode = Episode.find(params[:id])
      @episode.destroy
    end

end
