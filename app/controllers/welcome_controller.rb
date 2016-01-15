class WelcomeController < ApplicationController
  include ActionView::Helpers::TextHelper
  include ActionView::Helpers::SanitizeHelper
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
