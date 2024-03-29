class FlatsController < ApplicationController
  before_action :set_flat, only: %i[ show edit update destroy ]
  def index
    @flats = Flat.all
  end

  def show
  end

  def new

  end

  def create

  end

  def edit
  end

  def update

  end

  def destroy

  end

  def total
    @flats.size
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def params_flat
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
