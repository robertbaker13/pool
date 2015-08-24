class ApplicationController < ActionController::API
  private

  def bounce
    redirect_to "login" if !session[:id]
  end
end
