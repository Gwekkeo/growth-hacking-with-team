class User < ApplicationRecord
	validates :email, presence: true, length: {maximum: 50}, uniqueness: {case_sensitive: false}

	after_create :subscribe_user_to_mailing_list


	private

	def subscribe_user_to_mailing_list
		SubscribeUserToMailingListJob.perform_later(self)
	end


end
