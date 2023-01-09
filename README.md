# RubyonRails
RubyonRails Learning
# Install rails:
	gem install rails

# Create sample project:
	rails new demo

# Execute rails app:
	rails s -p 3001
	Note: if no port is specified then it will run at 3000 port which is default.

# Create hello world routes:
	1. Go to config/routes.rb
		root "application#hello"
	2. Go to app/controllers/application_controller.rb
		Add a function called as hello inside the application controller class
			def hello
				render html: 'hello World'
			end

# Create new controller:
	rails generate controller pages
