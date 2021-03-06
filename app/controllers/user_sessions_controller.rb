class UserSessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]
 
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to(root_url, notice: 'Bienvenido')
    else
      flash.now[:alert] = 'Error al entrar, porfavor verifique sus datos'
     redirect_back_or_to(root_url)
    end
  end

  def destroy
    logout
    redirect_to(root_url, notice: 'Desconectado!')
  end
end
