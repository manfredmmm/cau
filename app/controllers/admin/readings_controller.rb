module Admin
  class ReadingsController < AuthorizeController
    layout 'admin'
    inherit_resources

    def index
      index! do
        @readings = Reading.order('created_at DESC')
      end
    end

    def create
      create! { admin_root_path }
    end
     
    def update
      update! { admin_root_path }
    end

  end
end
