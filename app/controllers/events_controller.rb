class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
# SEARCH QURY CODE IMPORTANT
  def index
    @events = Event.where(visibility: true).bonzo(params[:page]).per(6)
    if params[:query].present?
      sql_subquery = <<~SQL
        events.title ilike :query
        OR events.description ilike :query
        OR types.name ilike :query
      SQL
      @events = @events.joins(:type).where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    # @event is already set by the before_action
    @event = Event.find(params[:id])
    @participations = @event.participations || []
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
      if @event.save!
       redirect_to events_url, notice: 'Event was successfully created.'
      else
        render :new, alert: @event.errors.full_messages
      end
  end

  def participate
    @event = Event.find(params[:id])
    @participation = current_user.participations.build(event: @event, status: 'pending')

    if @participation.save
      redirect_to pending_participations_path, notice: 'Your participation request is pending approval.'
    else
      redirect_to event_path(@event), alert: 'Something went wrong. Please try again.'
    end
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to event_url(@event), notice: 'Event was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event.destroy!

    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def event_params
    params.require(:event).permit(:title, :description, :city, :capacity, :date, :address, :type_id)
  end
end
