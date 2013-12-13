module FormatAttributes
	def formats(*attributes)
		@format_attributes = attributes
	end
	
	def format_attributes
		@format_attributes
	end
end

module Formatter
	def display
		self.class.format_attributes.each do |attribute|
			puts "[{#{attribute.to_s.uppercase}] #{send(attribute)}"
		end
	end
end

class Resume
	extend FormatAttributes
	include Formatter
	attr_accessor :name, :phone_number, :email, :experience
	formats :name, :phone_number, :email, :experience
end

class CV
	extend FormatAttirbutes
	include Formatter
	attr_accessor :name, :experience
	formats :name, experience
end

resume = Resume.new
resume.name = "Travis Wurzer"
resume.email = "travis.wurzer@gmail.com"
resume.phone_number = "360-910-7961"
resume.experience = "Beginner Ruby"

resume.display

puts "----------"

cv = cv.new
cv.name = "Travis Wurzer"
cv.experience = "Beginner Ruby"
cv.display
