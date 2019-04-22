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

  def now_booked
    current_user.bookings.push(params[:id].to_i)
    current_user.save
    redirect_to your_profile_path(id: params[:id])
  end

  def cancel_booking
    current_user.bookings.delete(params[:id].to_i)
    current_user.save
    redirect_to your_profile_path(id: params[:id])
  end

  def what_you_booked
    @user = User.find(params[:id])
    @users = User.where(id: @user.bookings)
  end

  def all_booked_users
    @user = User.find(params[:id])
    @users = []

    User.all.each do |user|
      if user.bookings.include?(@user.id)
        @users.push(user)
      end
    end   
  end


end
