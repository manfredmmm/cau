class WelcomeController < ApplicationController
  def index
    @covers = Slideshow.find_by_name("covers").slides
    @news = Reading.last(6)
    @aboutus = Section.find_by_name("aboutus")
    @units = Section.find_by_name("units")
    @caps = Section.find_by_name("caps")
    @installations = Slideshow.find_by_name("installations").slides
  end

  def noticia
    @new = Reading.find(params[:slug])
  end
end
