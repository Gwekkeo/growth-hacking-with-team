require "twitter"	#
require "dotenv"	#
Dotenv.load			#
#####################

class BotTwitter
#------------------------ CONNEXION --------------------------

attr_accessor :client

	def initialize
	# client = Twitter::Streaming::Client.new do |config|
		@client = Twitter::REST::Client.new do |config|
			# config.consumer_key		  = ENV["consumer_key"]
			# config.consumer_secret	  = ENV["consumer_secret"]
			# config.access_token 	  = ENV["access_token"]
			# config.access_token_secret = ENV["access_token_secret"]

			config.consumer_key		  = "0XnaIM711lbpSFwOgAXjceX9t"
			config.consumer_secret	  = "Y6KS4qnlhFPwa4EgXIRBOp45NoF6XlRMoHST9HP7LxwdTd0V4H"
			config.access_token 	  = "1016978227586306048-UzXGQ0yLswqNjSfcQK94ejtNC7gHqr"
			config.access_token_secret = "d4AGaUGxYKILfaJ8bX4Mzs8LI12YCOtmF2IVrDSBMz7Cl"
		end
	# puts @client
	end


#---------- Le bot envoie un tweet à des users suivant une recherche spécifique ---------------

	def perform

	#--- ECHANTILLON 1 : Envoi des tweets ---	
		# team = ["@Gwen_Rub1", "@Rubyaskip"]
		# team.each do |username|
		# 	client.update("#{username} nouveau test de message 13:41")
		# 	# sleep 87
		# end

	#--- ECHANTILLON 2 : Récup des tweets ---
		# @client.search("#bonanniversaire" -rt).take(3).each do |tweet|
		# 	puts tweet.text
		# end

	#--- ECHANTILLON 3 ---		
		@tweetsid = []
		@client.search("#ruby -rt", result_type: "recent").take(10).each do |tweet|
			@tweetsid << tweet
			#puts @tweetsinfos[0].user.screen_name
		end
		
		@usernames = []
		@tweetsid.each do |userid|	
			@usernames << userid.user.screen_name
		end
			#puts @usernames
		
		@usernames.each do |username|
			@client.update("Hello @#{username} ! Je t'invite à découvrir la formation The Hacking Project : https://landing-page-website.herokuapp.com/ ! Enjoy !")
			# sleep 2
		end
		puts "Tweets postés"
		
	end #end perform 

end #end class
