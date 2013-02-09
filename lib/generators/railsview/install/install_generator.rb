module Railsview
  module Generators
    class InstallGenerator < Rails::Generators::Base
    	source_root File.expand_path('../templates', __FILE__)

    	def create_folders
    		empty_directory "#{Rails.root}/lib/railsview/themes"
    	end
   	end
  end
end