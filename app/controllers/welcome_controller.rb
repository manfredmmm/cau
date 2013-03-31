class WelcomeController < ApplicationController
  def index
    @news = Section.find_by_name("news")
    @aboutus = Section.find_by_name("aboutus")
    @units = Section.find_by_name("units")
  end
end
