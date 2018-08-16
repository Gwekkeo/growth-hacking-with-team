class ContactMailer < ApplicationMailer
	def contact(user)
		@user = user
		@first_name = @user.first_name
		@last_name = @user.last_name
		@email_user = @user.email
		mail(to: @email_user, subject: "Bonjour #{@last_name}!")
	end

	def campagne
		gibbon = Gibbon::Request.new(api_key: ENV["MAIL_CHIMP_API_KEY"])
		gibbon.campaigns('').actions.send.create
	end


end
