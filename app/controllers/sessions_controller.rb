class SessionsController < ApplicationController

  def login
    session[:id] = 1
    render root_path
  end
end
