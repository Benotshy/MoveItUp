class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

# SEARCH QURY CODE IMPORTANT
def index
  @events = Event.where(visibility: true).bonzo(params[:page]).per(6)

  # Filtering by search query
  if params[:query].present?
    sql_subquery = <<~SQL
      events.title ILIKE :query
      OR events.description ILIKE :query
      OR types.name ILIKE :query
    SQL
    @events = @events.joins(:type).where(sql_subquery, query: "%#{params[:query]}%")
  end

  # Filtering by city
  if params[:city].present? && params[:city] != "All"
    @events = @events.where(city: params[:city])
  end
end


  def show
    if current_user == @event.user
      @approved_participants = @event.participations.where(status: 'approved')
      @pending_participations = @event.participations.where(status: 'pending')
    end
  end

  def new
    @event = Event.new
    @types = Type.all
  end

  def edit
    # @event is already set by the before_action
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render :new, alert: @event.errors.full_messages
    end
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :city, :capacity, :date, :address, :type_id)
  end
end
