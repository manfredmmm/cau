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
      create! { admin_readings_path }
    end
     
    def update
      update! { admin_readings_path }
    end

    def destroy
      destroy! { admin_readings_path }
    end
  end
end
