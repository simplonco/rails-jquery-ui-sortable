class CanardsController < ApplicationController
  def index
  	@canards = Canard.order("position")
  end

  def new
  	@canard = Canard.new
  end

  def create
  	@canard = Canard.new(canard_params)
	@canard.save
	redirect_to canards_path
  end

  def sort
  	params[:canard].each_with_index do |id, index|
  		Canard.update_all({position: index+1}, {id: id})
  	end
  	render nothing: true
  end 

  private
 
  def canard_params
    params.require(:canard).permit(:nom)
  end
end
