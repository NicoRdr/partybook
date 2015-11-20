class SoireeController < ApplicationController
   before_action :set_soiree, only: [:show, :edit, :update, :destroy]

  def index
    @soirees = Soiree.all
  end

  def create
     @soiree = Soiree.create(params[:soiree])
  end
  

 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soiree
      @soiree = Soiree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soiree_params
      params.require(:soiree).permit(:user_id, :soiree_id, :create, :destroy, :show)
    end
end
