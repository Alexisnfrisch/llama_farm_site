class HomeController < ApplicationController
  
  # before_action :authenticate_user!
  before_action :authenticate_user!, :except => [:animal_profiles, :buy_products, :about_us, :index]
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def show_user
    @user = User.find(params[:id])
  end

  def your_profile
    @user = current_user.id
  end

  def animal_profiles
  end

  def booking
  end

  def buy_products
  end

  def about_us
  end

  def index
  end

  def all_users
    @users = User.all
  end

end
