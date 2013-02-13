# rails generate railsview_import "001_smartbiz"
module Railsview
  module Generators
    class ImportGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      argument	:theme_name, :type => :string
    
    
      def install_theme 
      			if yes?("Install #{file_name} theme into your app #{Rails.application.class.parent_name}? (yes/no)...")
      				directory "#{Rails.root}/lib/railsview/themes/#{file_name}/application/", "#{Rails.root}"
      				contents = File.read("#{Rails.root}/lib/railsview/themes/#{file_name}/ROUTES")
      				route(contents)
      				remove_file "#{Rails.root}/public/index.html"
      			end
      end
    
      private
    
      def file_name
      	theme_name.underscore
      end
    end
  end
end