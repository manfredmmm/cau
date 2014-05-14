module Admin
  class SlideshowsController < AuthorizeController
    layout 'admin'
    inherit_resources
  end
end
