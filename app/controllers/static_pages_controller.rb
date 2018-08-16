class StaticPagesController < ApplicationController
  def home
  end

  def create
  	mon_user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
  	if mon_user.save
  		# LIGNE POUR ENVOYER UN EMAIL AVEC LE NOM
  		# DE LA PERSONNE
  		ContactMailer.contact(mon_user.first_name).deliver_later

  		redirect_to root_path
  	end
  end
end
