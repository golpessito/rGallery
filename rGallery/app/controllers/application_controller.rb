class ApplicationController < ActionController::Base
  before_filter :get_category_nav
  protect_from_forgery with: :exception


  private
    def get_category_nav
      @categoryNav=Category.all
    end
end
