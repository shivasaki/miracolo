class SessionController < ApplicationController
  def login
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      if Content.find_by(user_id: user.id )
        redirect_to main_path, notice: 'ログインに成功しました'
      else
        redirect_to main_path, notice: 'ログインに成功しました'
      end
    else
      flash[:alert] = 'ログインできませんでした'
      render 'login'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
