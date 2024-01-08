class CarworldsController < ApplicationController
  before_action :authenticate_user!

  before_action :current_carworld, only: [:show, :edit, :update, :destroy]

  def index
    @carworlds = Carworld.all
    authorize @carworlds
  end

  def show
    authorize @carworld
  end

  def new
    @carworld = Carworld.new
    authorize @carworld
  end

  def create
    @carworld = Carworld.create(carworld_params)
    authorize @carworld

    redirect_to carworld_path(@carworld)
  end

  def edit
    authorize @carworld
  end

  def update
 
    @carworld = Carworld.find(params[:id])

      if @carworld
          authorize @carworld
          @carworld.update(carworld_params)
      end

    

    redirect_to carworld_path(@carworld)
  end

  def destroy
    @carworld = Carworld.find(params[:id])
    if @carworld
      authorize @carworld
      @carworld.destroy
  end
   
    

    redirect_to carworlds_path
  end

  private

  def carworld_params
    params.require(:carworld).permit(:brand, :model)
  end

  def current_carworld
    @carworld = Carworld.find(params[:id])
  end

end