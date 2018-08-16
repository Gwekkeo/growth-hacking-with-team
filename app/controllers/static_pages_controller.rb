require 'pry'

class StaticPagesController < ApplicationController
  def home    
  end

  def sending
    5.times do |i|
      # tab_all_user = gibbon.lists('2549c90cf5').members.retrieve
    end
    
    redirect_to root_path
  end

  def create
    mon_user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
    if mon_user.save
      # LIGNE POUR ENVOYER UN EMAIL AVEC LE NOM
      # DE LA PERSONNE
      ContactMailer.contact(mon_user).deliver

  		redirect_to root_path
  	end
  end

  def temoigne
  end

  def cursus
  end
end
