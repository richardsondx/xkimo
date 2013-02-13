module Railsview
  module Generators
    class InstallGenerator < Rails::Generators::Base
    	source_root File.expand_path('../templates', __FILE__)

    	def create_folders
    		empty_directory "#{Rails.root}/lib/railsview/themes"
    		puts "Railsview was succesfully installed."
    		puts "You can now add all your themes in the 'lib/railsview/themes' directory"
        puts "Be aware that installing a railsview theme will overwrite your app."
        puts "============================================================================="
    		puts "Run 'rails generate railsview:import Theme_Name' to import and install theme."
        puts "============================================================================="
    		puts "If you don't have a theme yet..."
    		puts "You can get themes at http://www.railsview.com"
    	end
   	end
  end
end