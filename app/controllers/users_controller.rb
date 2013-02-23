class UsersController < ApplicationController
  def show
  @user = User.find(params[:id])
  @title = @user.nom
  end

  def new
  @title = "S'inscrire"
  end
end
