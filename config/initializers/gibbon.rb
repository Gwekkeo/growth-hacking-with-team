require 'gibbon'

gibbon = Gibbon::Request.new(api_key: ENV["MAIL_CHIMP_API_KEY"])
gibbon.timout = 20