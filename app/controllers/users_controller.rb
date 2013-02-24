class UsersController < ApplicationController
  def show
  @user = User.find(params[:id])
  @title = @user.nom
  end
  
  def new
  @user = User.new
  @title = "S'inscrire"
  end

  def create
  	@user =User.new(params[:user])
  	if @user.save
  		#traite un sucées d'enregistrement
  		 redirect_to @user
  		 flash[:success] = "Bienvenue dans SecuriSocial!"
  	else
  		@title = "inscripton"
  		render 'new'
  	end
  end	

end
