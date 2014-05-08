module Admin
  class ReadingsController < AuthorizeController
    inherit_resources

    def create
      create! { admin_root_path }
    end
     
    def update
      update! { admin_root_path }
    end

  end
end
