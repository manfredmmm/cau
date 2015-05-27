module Admin
  class SectionsController < AuthorizeController
    inherit_resources
    layout 'admin'
    def create
      create! { admin_sections_path }
    end

    def update
      update! { admin_sections_path }
    end

    def destroy
      destroy! { admin_sections_path }
    end
  end
end
