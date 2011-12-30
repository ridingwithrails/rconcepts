# Load the rails application
require File.expand_path('../application', __FILE__)
require 'flickraw'
FlickRaw.api_key="9cf75255edca50b72600c432ec721262"
FlickRaw.shared_secret="d23a3586b3553273"

# Initialize the rails application
Rconcept5::Application.initialize!
