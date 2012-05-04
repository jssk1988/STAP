module ApplicationHelper

	#返回网站标题
	def title
		base_title ="科研成果转换平台"
		if @title.nil?
			base_title
		else
		"#{@title}-#{base_title}"
		end
	end
end
