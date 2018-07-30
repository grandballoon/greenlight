class ProducersController < ApplicationController

  def create
    @producer = Producer.create(producer_params)
  end

  def index
    @producers = Producer.all
  end

  def show
    @producer = Producer.find(params[:id])
  end

  def destroy
    @producer = Producer.find(params[:id])
    @producer.destroy
  end

  private

  def producer_params
    params.require(:producer).permit(:name)
  end
end
