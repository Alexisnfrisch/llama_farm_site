class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!
  # before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :set_lesson, only: [:show]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @events = Event.all
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
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
    @booking = Bookings.find(params[:id])
    @bookings = Bookings.where(id: @booking.bookings)
  end

  def all_booked_users
    @booking = Bookings.find(params[:id])
    @bookings = []

    Bookings.all.each do |booking|
      if user.bookings.include?(@user.id)
        @users.push(user)
      end
    end   
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :start_time, :end_time, :image)
    end
end
