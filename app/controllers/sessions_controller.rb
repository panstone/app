class SessionsController < ApplicationController
  def new
  end

  def create
  	player = Player.find_by(name: params[:name])
  	if player and player.authenticate(params[:password])
  		session[:player_id] = player.id
  		redirect_to admin_url
  	else
  		redirect_to login_url, alert: "Неверная комбинация имени и пароля"
  	end
  end

  def destroy
  	session[:player_id] = nil
  	redirect_to store_url, notice: "Сеанс работы завершен"
  end
end
