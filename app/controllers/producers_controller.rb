class ProducersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    @producer = Producer.new
    render :signup
  end

  def create
    @producer = Producer.create(producer_params)
    if @producer.valid?
      flash[:notice] = "Signup successful! Welcome, #{@producer.name}"
      session[:logged_in_producer_id] = @producer.id
      redirect_to profile_path
    else
      render :show
    end
  end

  def index
    @producers = Producer.all
  end

  def show
    render :show
  end

  def destroy
    @producer = Producer.find(params[:id])
    @producer.destroy
  end

  def welcome
    render :"welcome"
  end

  def signup
    render :"signup"
  end


  private

  def producer_params
    params.require(:producer).permit(:name, :password)
  end
end
