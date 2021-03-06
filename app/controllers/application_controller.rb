class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [:run, :fecha_nacimiento, :run_dig_ver, :nombre, :apellidop, :apellidom, :email, :password, :password_confirmation, :prevision,:sexo,:direccion,:num,:depto,:comuna,:telefono]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
