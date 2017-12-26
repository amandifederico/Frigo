class ApplicationController < ActionController::Base
	include CanCan::ControllerAdditions
	protect_from_forgery with: :exception

	rescue_from CanCan::AccessDenied do |exception|
   		flash[:error] = exception.message
   		redirect_to root_url
   	end

	def respond_modal_with(*args, &blk)
	    options = args.extract_options!
	    options[:responder] = ModalResponder
	    respond_with *args, options, &blk
	end

end
