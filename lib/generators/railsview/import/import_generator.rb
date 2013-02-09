# rails generate railsview_import "001_smartbiz"
module Railsview
  module Generators
    class ImportGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      argument	:theme_name, :type => :string
    
    
      def install_theme 
      		if yes?("This theme is mean to be installed on a brand new app. If this is a brand new app? yes or no?")
      			if yes?("Install #{file_name} theme into your app #{Rails.application.class.parent_name}?")
      				directory "#{Rails.root}/lib/railsview/themes/#{file_name}/application/", "#{Rails.root}"
      				contents = File.read("#{Rails.root}/lib/railsview/themes/#{file_name}/ROUTES")
      				route(contents)
      				remove_file "#{Rails.root}/public/index.html"
      			end
      		else
      			puts "Create a brand new app then run this generator again."
      		end
      end
    
      private
    
      def file_name
      	theme_name.underscore
      end
    end
  end
end