class SubscribeUserToMailingListJob < ActiveJob::Base

	queue_as :default
	require 'gibbon'

	def perform(user)
		gibbon = Gibbon::Request.new(api_key: ENV["MAIL_CHIMP_API_KEY"])
		# gibbon.timout = 10

		gibbon.lists("2549c90cf5").members.create(
			body:{
				email_address: user.email,
				status: "subscribed",
				merge_fields: {FNAME: user.first_name, LNAME: user.last_name}
			})
	end

end


# gibbon.rb 							DANS config/initializers
# subsribe_user_to_mailing_list_job.rb 	DANS app/jobs