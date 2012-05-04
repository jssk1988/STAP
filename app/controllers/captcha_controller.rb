#require 'RMagick'
class CaptchaController < ApplicationController
	def image
		# create an RMagic canvas and render difficult to read text on it
		img = canvas.flatten_images
		img.format = "JPG"
		# send it to the browser
		send_data img.to_blob, :disposition => 'inline', :type => 'image/jpg'
	end
	
	def download
		send_file(params[:path])
	end
end