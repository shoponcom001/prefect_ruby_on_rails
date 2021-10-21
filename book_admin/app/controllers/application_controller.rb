class ApplicationController < ActionController::Base
  before_action :detect_mobile_variant
  
  # before_action do
  #   redirect_to access_denied_path if params[:token].blank?
  # end
  
  # before_action :require_login
  
  def require_login
  end
  
  # skip_before_action :require_login, only: [:new, :create]
  
  private
  
  def detect_mobile_variant
    request.variant = :mobile if request.user_agent =~ /iPhone/
  end
  
end
