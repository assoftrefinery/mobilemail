class ApplicationController < ActionController::Base
  include ControllerAuthentication
  protect_from_forgery

  #detectamos si la peticion web es desde un mobil
  #Mobile = android, webOS = iphone, ipad, etc
  before_filter :prepare_for_mobile

  private
  def mobile_device?
    if session[:mobile_param]
       session[:mobile_param] == "1"
    else
      request.user_agent =~ /Mobile|webOS/
    end
  end
  helper_method :mobile_device?

  def prepare_for_mobile
    session[:mobile_param] = params[:mobile] if params[:mobile]
    #despues de crear el tipo MIME en config/mime_types
    request.format = :mobile if mobile_device?

    #para
    #respond_to do |format|
    #  format.html
    #  format.mobile
    #end

  end
end
