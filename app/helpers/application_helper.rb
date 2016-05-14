module ApplicationHelper
	def title(page_title)
		content_for(:title) { page_title }
	end

	def body_class(body_class)
		content_for(:body_class) { body_class }
	end

	def add_class_cp(path, klass)
		klass if current_page?(path)
	end

	def add_class_cps(paths, klass)
		paths.each do |path|
			return klass if current_page?(path)
		end
		return nil
	end
end
