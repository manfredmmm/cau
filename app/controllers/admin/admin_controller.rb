module Admin
  class AdminController < AuthorizeController
    layout 'admin'
    def index
    end
  end
end
