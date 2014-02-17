class CanardController < ApplicationController
  def index
  end

  def new
  end

  def create
  	@canard = Canard.new(canard_params)
	@canard.save
	redirect_to canard_index_path
  end

  private
 
  def canard_params
    params.require(:canard).permit(:nom)
  end
end
