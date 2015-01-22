module RubyMotionQuery
	module Stylers
		class UIButtonStyler < UIControlStyler

			def text_highlighted value
				@view.setTitle(value, forState:UIControlStateHighlighted)
			end

			def text_highlighted= value
				@view.setTitle(value, forState:UIControlStateHighlighted)
			end

			# Assume text alignment will be center ALWAYS
			def number_of_lines value
				@view.titleLabel.numberOfLines = value
				@view.titleLabel.setTextAlignment(NSTextAlignmentCenter)
			end
			def number_of_lines= value
				@view.titleLabel.numberOfLines = value
				@view.titleLabel.setTextAlignment(NSTextAlignmentCenter)
			end
		end
	end
end