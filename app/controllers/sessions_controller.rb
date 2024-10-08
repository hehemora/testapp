class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(login: params[:user][:login])

    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to  cms_cms_page_path
    else
      flash[:alert] = "Login failed"
      redirect_to root_path
    end
  end

  def destroy
    session.delete :user_id
    # helpers.sign_out
    flash[:notice] = "Вы вышли из аккаунта"
    redirect_to root_path
  end
end
