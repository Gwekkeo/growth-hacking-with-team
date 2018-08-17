require 'watir'

class WatirYt
	attr_accessor :browser

	def initialize
		@browser = Watir::Browser.new :firefox
		@browser.goto "https://www.youtube.com/"
		
		# @browser.goto "https://accounts.google.com/ServiceLogin/signinchooser?service=youtube&continue=https%3A%2F%2Fwww.youtube.com%2Fsignin%3Fhl%3Den%26action_handle_signin%3Dtrue%26next%3D%252F%26app%3Ddesktop&hl=en&uilel=3&passive=true&flowName=GlifWebSignIn&flowEntry=ServiceLogin"
		# if browser.text.include? 'Sign in'
		# 	puts "YESSS"
		# 	n = browser.text_field(:id, id="identifierId")
		# 	n.set("")
		# else
		# 	puts "NOOO"
		# end
	end

	def go_video
		bar_search = @browser.text_field(:id, "search")
		submit = @browser.button(:id, "search-icon-legacy")

		#ECRIS DANS BARRE DE RECHERCHE
		if bar_search.exists?			
			bar_search.set("informatique")
			submit.click
		end
		#SELECTIONNE VIDEO
		lien_premiere_video = browser.a(:id => "video-title")
		lien_premiere_video.click

		#ECRIS UN COMMENTAIRE
		bar_comm = @browser.text_field(:id, "textarea")
		if bar_comm.exists?
			puts "OUIIII"
		else 
			puts "NO"
		end
		bar_comm.set("Merci pour cette video! THP")

		submitcomm = @browser.button(:id, "submit-button")
		submitcomm.click

	end

end


# DOIT
# id = video-title
# NE DOIT PAS 
# class = ytd-promoted-video-renderer

