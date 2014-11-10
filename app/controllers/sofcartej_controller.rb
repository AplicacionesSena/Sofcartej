class SofcartejController < ApplicationController
before_filter :require_login, :except => [:inicio]

  def inicio
  	@videos = Video.all
  end

  def sofcartej
  end
end
