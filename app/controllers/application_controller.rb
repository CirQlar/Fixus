class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def check_for_mobile
    session[:mobile_override] = params[:mobile] if params[:mobile]
  end

  def mobile_device?
    if session[:mobile_override]
      session[:mobile_override] == "1"
    else
      request.user_agent =~ /Mobile|webOS/
    end
  end
end

helper_method :mobile_device?
