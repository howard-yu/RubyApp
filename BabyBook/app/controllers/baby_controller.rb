class BabyController < ApplicationController
  def index
  	@bpook = Bpook.all
  end

  def newbaby
  	@bpook = Bpook.new
  end

  def create
  	@bpook = Bpook.new(bpook_params)
  	@bpook.save
  	
  	redirect_to(:action => "index")
  end

  def modify
  	@bpook = Bpook.find(params[:id])
  end

  def updateing
  	@bpook = Bpook.find(params[:id])
  	@bpook.update_attributes(bpook_params)

  	redirect_to(:action => "index")
  end
  def del
	@bpook = Bpook.find(params[:id])
	@bpook.destroy

	redirect_to(:action => "index")
  end

  private
  
  def bpook_params
	params.require(:bpook).permit(:name, :years, :birthday)
  end
end
