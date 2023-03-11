class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = user.nickname
    @furima = user.furimas
  end
end