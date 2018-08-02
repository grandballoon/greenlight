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
    @show = Show.create(title: params[:show][:title], genre_id: params[:show][:genre_id], producer: current_producer)
    @influence_one = Show.find(params[:show][:influenced])
    @influence_two = Show.find(params[:show][:influences])


    if @show.save
      Relationship.create(influencer_id: @influence_one.id, influenced_id: @show.id)
      Relationship.create(influencer_id: @influence_two.id, influenced_id: @show.id)
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
    params[:show][:tropes].each do |trope|
      if trope != ""
        ShowTrope.create(trope_id: trope, show_id: @show.id)
      end
    end

    params[:show][:actors].each do |actor|
      if actor != ""
        Appearance.create(actor_id: actor, show_id: @show.id)
      end
    end

    if @show.save
      redirect_to @show
    else
      render :edit
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
