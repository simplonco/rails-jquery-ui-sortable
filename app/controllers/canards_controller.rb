class CanardsController < ApplicationController
  def index
  	@canards = Canard.all
  end

  def new
  	@canard = Canard.new
  end

  def create
  	@canard = Canard.new(canard_params)
	@canard.save
	redirect_to canards_path
  end

  private
 
  def canard_params
    params.require(:canard).permit(:nom)
  end
end
