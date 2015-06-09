class BabyController < ApplicationController
  def index
  	@bpook = Bpook.all
  end
end
