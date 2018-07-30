class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)

    if @show.save
      redirect_to #TODO
    else
      render #TODO
    end
  end

  def show
    @show = Show.find(params[:id])
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])

    if @show.update(show_params)
      redirect_to #TODO
    else
      render #TODO
    end
  end

    def destroy
      @show = Show.find(params[:id])
      @show.destroy
    end

private

def show_params
  params.require(:show).permit(:title, :description, :producer, actors:[])
end


end
