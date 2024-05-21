# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || homepage_path
  end

end
