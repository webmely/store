module Admin
	class BaseController < ApplicationController
		layout 'admin'
		before_filter :authen!
		

		private
		def authen!
			redirect_to "/" and return unless current_user.admin? || current_user.seller?
		end
	end
end