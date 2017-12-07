class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password_digest])
      session[:user_id] = user.id
      redirect_to craigslist_index_path
    else
      redirect_to '/login'
  end
end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end
