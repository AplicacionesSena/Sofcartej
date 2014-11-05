class SofcartejController < ApplicationController
  def inicio
  	@videos = Video.all
  end

  def sofcartej
  end
end
