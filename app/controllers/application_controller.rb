class ApplicationController < ActionController::Base
	include CanCan::ControllerAdditions

	
	protect_from_forgery with: :exception

	rescue_from CanCan::AccessDenied do |exception|
   		flash[:error] = exception.message
   		redirect_to root_url
   	end

end