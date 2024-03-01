class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard, :dashboard_admin]
  before_action :authorize!, only: [:dashboard_admin]

  def rooting
    if user_signed_in? && (current_user.admin? ||current_user.client?)
      redirect_to dashboard_path
    elsif user_signed_in? && (current_user.admin? || current_user.stylist?)
      redirect_to dashboard_admin_path
    else
      redirect_to welcome_path
    end
  end

  def welcome
  end

  def dashboard
    @cities = City.all
    if params[:city_id].present?
      @locals = Local.where(city_id: params[:city_id])
    else
      @locals = Local.all
    end
  end

  def dashboard_admin
  end
end
