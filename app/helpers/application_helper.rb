module ApplicationHelper
	def title(page_title)
		content_for(:title) { page_title }
	end

	def body_class(body_class)
		content_for(:body_class) { body_class }
	end
end
