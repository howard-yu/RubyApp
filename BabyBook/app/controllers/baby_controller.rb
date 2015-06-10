class BabyController < ApplicationController
  def index
  	@bpook = Bpook.all
  end

  def newbaby
  	@bpook = Bpook.new
  end

  def create
  	@bpook = Bpook.new(parmar[:bpook])
  	@bpook.save
  	redirect_to(:action => "index")
  end
end
