class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name]=params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to :root
    else
      redirect_to sessions_home_path
    end
  end

  def home
  end

  def destroy
    session.delete :name
    redirect_to :root
  end

end
