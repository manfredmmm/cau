class WelcomeController < ApplicationController
  def index
    @covers = Slideshow.find_by_name("covers").slides
    @news = Reading.order('created_at DESC').first(3)
    @aboutus = Section.find_by_name("aboutus")
    @units = Section.find_by_name("units")
    @caps = Section.find_by_name("caps")
    @sleep = Section.find_by_name("sleep")
    @signin = Section.find_by_name("signin")
    @history = Section.find_by_name("history")
    @installations = Slideshow.find_by_name("installations").slides
  end

  def noticia
    @new = Reading.find(params[:slug])
  end
end
