class WelcomeController < ApplicationController
  include ActionView::Helpers::TextHelper
  include ActionView::Helpers::SanitizeHelper
  def index
    @covers = Slideshow.find_by_name("covers").slides unless Slideshow.find_by_name("covers").nil?
    @news = Reading.order('created_at DESC').first(3) unless Reading.nil?
    @aboutus = Section.find_by_name("aboutus") unless Section.find_by_name("aboutus").nil?
    @units = Section.find_by_name("units") unless Section.find_by_name("units").nil?
    @caps = Section.find_by_name("caps") unless Section.find_by_name("caps").nil?
    @sleep = Section.find_by_name("sleep") unless Section.find_by_name("sleep").nil?
    @signin = Section.find_by_name("signin") unless Section.find_by_name("signin").nil?
    @history = Section.find_by_name("history") unless Section.find_by_name("history").nil?
    @installations = Slideshow.find_by_name("installations").slides unless Slideshow.find_by_name("installations").nil?

    set_meta_tags title:          "AEiG Cardenal Lluch",
                  description:    "Agrupament Escolta i Guia Cardenal Lluch de Manresa. El nostre agrupament va ser el primer de Manresa i el tercer de la Catalunya central.",
                  keywords:       "cau manresa, escoltes manresa, agrupament escolta manresa, cau cardenal lluch, escoltes cardenal lluch, agrupament cardenal lluch",
                  og: {
                    type:         "article",
                    title:        "AEiG Cardenal Lluch",
                    description:  "Agrupament Escolta i Guia Cardenal Lluch de Manresa. El nostre agrupament va ser el primer de Manresa i el tercer de la Catalunya central.",
                    url:          "http://cardenallluch.cat",
                    image:        "http://cardenallluch.cat/uploads/slide/image/26/panoramica1.jpg"
                  }
  end

  def noticia
    @new = Reading.find(params[:slug])

    set_meta_tags title:          "AEiG Cardenal Lluch",
                  site:           @new.title,
                  description:    truncate(sanitize(@new.content), length: 160),
                  keywords:       "cau manresa, escoltes manresa, agrupament escolta manresa, cau cardenal lluch, escoltes cardenal lluch, agrupament cardenal lluch",
                  og: {
                    type:         "article",
                    title:        @new.title,
                    description:  truncate(sanitize(@new.content), length: 160),
                    url:          "http://cardenallluch.cat/noticia/#{params[:slug]}",
                    image:        "http://cardenallluch.cat#{@new.image.url}"
                  }
  end
end
