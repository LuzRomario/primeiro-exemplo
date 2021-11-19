class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    cookies[:locale] = params[:locale] if params[:locale]
    I18n.locale = cookies[:locale] if cookies[:locale] && (I18n.locale != cookies[:locale])
  end
end
