class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def new
    @show = Show.new
    @show.influencing_relationships.build()
    @show.influencing_relationships.build()
  end

  def create
    @show = Show.new(title: params[:show][:title], genre_id: params[:show][:genre_id], producer: current_producer)
    @influence_one = Show.find(params[:show][:influenced])
    @influence_two = Show.find(params[:show][:influences])
    @show.influences << @influence_one
    if @influence_one != @influence_two
      @show.influences << @influence_two
    end
    byebug
    if @show.save
      redirect_to "/shows/#{@show.id}/edit"
    else
      flash[:notice] = "I'm not seeing the whole picture, doll."
      render :new
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
  params.require(:show).permit(:title, :genre, influences:[], actors:[])
end


end
