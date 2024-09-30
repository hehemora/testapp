class PagesController < ApplicationController
  before_action :current_user, only: [:main_page]
  def blank_page
  end
end
