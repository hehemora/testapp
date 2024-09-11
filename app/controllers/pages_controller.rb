class PagesController < ApplicationController
  before_action :current_user, only: [:main_page]
  def login_page
  end
end
