class ApplicationController < ActionController::Base
  protect_from_forgery
  def stored_location_for(resource)
    nil
  end
  
  def after_sign_in_path_for(resource)
      stored_location_for(resource) || root_url
  end
end
