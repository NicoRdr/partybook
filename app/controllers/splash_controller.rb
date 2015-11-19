class SplashController < ApplicationController
  
  def index
    if current_user.utilisateur
       redirect_to utilisateur_path
    else
       current_user.organisateur == true
       redirect_to organisateur_path
    end
  end

end
