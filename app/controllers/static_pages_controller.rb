class StaticPagesController < ApplicationController
  def home
  end

  def create
  	mon_user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
  	if mon_user.save
  		redirect_to root_path
  	end
  end
end
