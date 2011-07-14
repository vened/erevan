# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Erevan::Application.initialize!

Haml::Template.options[:format] = :xhtml


#Rails::Initializer.run do |config|
#
#  config.gem "paperclip", :version => "~> 2.3"
#
#end