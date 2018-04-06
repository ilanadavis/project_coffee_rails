class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # GET /root_url
  def home
  end
  
end

