class SoireeController < ApplicationController

  def index
    @soirees = Soiree.all
  end

  def show
  end
end
