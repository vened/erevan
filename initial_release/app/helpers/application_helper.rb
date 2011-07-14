# encoding: utf-8
module ApplicationHelper

	def title
		base_title = "Ресторан Ереван"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end

	def meta_key
		base_meta_key = "Ресторан Ереван"
		if @meta_key.nil?
			base_meta_key
		else
			@meta_key
		end
	end

	def meta_desc
		base_meta_desc = "Ресторан Ереван"
		if @meta_desc.nil?
			base_meta_desc
		else
			@meta_desc
		end
	end

end
