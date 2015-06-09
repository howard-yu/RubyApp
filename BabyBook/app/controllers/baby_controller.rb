class BabyController < ApplicationController
  def index
  	@bpooks = Bpook.all
  end
end
