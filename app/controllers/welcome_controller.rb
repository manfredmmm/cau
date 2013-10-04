class WelcomeController < ApplicationController
  def index
    @news = Section.find_by_name("news")
    @aboutus = Section.find_by_name("aboutus")
    @units = Section.find_by_name("units")
    @caps = Section.find_by_name("caps")
    #@installations = Slideshow.find_by_name("installations").slides
  end
end
