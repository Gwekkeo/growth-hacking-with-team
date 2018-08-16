class ContactMailer < ApplicationMailer
	def contact(param)
		@param_name = param
		mail(to: 'test@gmail.com', subject: "Salut #{@param_name}!")
	end
end
