module RecipesHelper
	def sanitizehtml(iphtml)
		full_sanitizer = Rails::Html::FullSanitizer.new
		full_sanitizer.sanitize(iphtml)
	end
end
