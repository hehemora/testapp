class PagesController < ApplicationController
  def mainpage
  end
  def secondpage
    if helpers.current_user.blank?
      render plain: '401 Unauthorized', status: :unauthorized
    end
  end
end
