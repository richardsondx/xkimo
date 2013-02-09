module Railsview
  module Generators
    class InstallGenerator < Rails::Generators::Base
    	source_root File.expand_path('../templates', __FILE__)

    	def create_folders
    		empty_directory "#{Rails.root}/lib/railsview/themes"
    		puts "Thanks to Xkimo, Railsview was succesfully installed."
    		puts "Add all your themes in the 'lib/railsview/themes' directory"
    		puts "Type 'rake railsview:import Theme_Name' to install them."
    		puts "But before that, you need to get a theme!"
    		puts "You can get a theme at http://www.railsview.com"
    	end
   	end
  end
end