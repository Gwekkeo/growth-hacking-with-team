class StaticPagesController < ApplicationController
  def home    
  end

  def sending
    gibbon = Gibbon::Request.new(api_key: ENV["MAIL_CHIMP_API_KEY"])
    puts "-"*60
    puts "-"*60
    puts "-"*60
    puts "\tON ENVOIT UN MAIL A CHAQUE MEMBRE DE LA LISTE 'SUBSCRIBE'"
    tab_all_user = gibbon.lists.members(2549c90cf5)['data']
    tab_all_user.each do |user|
      puts "L'user: #{user} -> #{user.first_name} -> #{user.last_name}"
      ContactMailer.contact(user).deliver_now
    end
    puts "-"*60
    puts "-"*60
    puts "-"*60
    redirect_to root_path
  end

  def create
    mon_user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
    if mon_user.save
      # LIGNE POUR ENVOYER UN EMAIL AVEC LE NOM
      # DE LA PERSONNE
      ContactMailer.contact(mon_user.first_name).deliver

  		redirect_to root_path
  	end
  end
end
