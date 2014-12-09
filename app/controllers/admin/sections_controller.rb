module Admin
  class SectionsController < AuthorizeController
    inherit_resources
    layout 'admin'
    def create
      create! { admin_root_path }
    end

    def update
      update! { admin_root_path }
    end

    def destroy
      destroy! { admin_root_path }
    end
  end
end
