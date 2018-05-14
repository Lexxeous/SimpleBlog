class PagesController < ApplicationController
	def about
		@title = 'About Us';
		@content = 'This is the about page and this is the paragraph that explains the use/function of this page. I would like to make this long so that I can see some actual wrapping on the web side.';
	end
end
