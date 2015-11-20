class SoireesController < ApplicationController
   # before_action :set_soiree, only: [:show, :edit, :update, :destroy]

  def index
    @soirees = Soiree.all
  end


  def show
    @soiree = Soiree.find(params[:id])
  end
  
  def new
    @soiree = Soiree.new
  end

  def create
    @soiree = Soiree.new(soiree_params)
    if @soiree.save
      redirect_to soirees_path
    else
      render :new
    end
  end

  def destroy
    @soiree = Soiree.find(params[:id])
    @soiree.delete
    redirect_to soirees_path
  end
  


   private

  def soiree_params
    params.require(:soiree).permit(:nom, :date, :type_of, :description, :lieux, :prix, :place, :user_id)
  end
end
