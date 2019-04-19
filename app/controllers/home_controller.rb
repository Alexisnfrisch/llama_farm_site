class HomeController < ApplicationController
  
  before_action :authenticate_user!

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
