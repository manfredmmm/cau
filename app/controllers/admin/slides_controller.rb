module Admin
  class SlidesController < AuthorizeController
    layout 'admin'
    inherit_resources
  end
end
