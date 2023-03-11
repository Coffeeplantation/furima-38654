class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
 
  protected
 
  def configure_permitted_parameters
    binding.pry
    devise_parameter_sanitizer.permit(
      :sign_up, keys: [:nickname, :birth_date, :family_name, :last_name, :family_name_kana, :last_name_kana]
    )
  end
 end