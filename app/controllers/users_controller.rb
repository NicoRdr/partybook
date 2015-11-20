class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

  def create
    @user = User.create(user_params)
  end


  # def destroy
  #   @user.destroy
  #   respond_to do |format|
  #     flash[:success] = 'Todo was successfully destroyed.'
  #     format.html { redirect_to root_path, notice: 'Post was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

end
