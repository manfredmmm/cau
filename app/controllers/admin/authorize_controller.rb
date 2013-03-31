module Admin
  class AuthorizeController < ApplicationController
    before_filter :admin?

    private

    def admin?
      authenticate_or_request_with_http_basic do |username, password|
        username == "cardenallluch" && password == "palmera1234"
      end
    end
  end
end
