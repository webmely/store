module Admin
	class BaseController < ApplicationController
		layout 'admin'
		before_filter :authen!
		

		private
		def authen!
			redirect_to "/" and return unless current_user.try(:admin?) || current_user.try(:seller?)
		end
	end
end