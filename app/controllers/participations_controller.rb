# app/controllers/participations_controller.rb
class ParticipationsController < ApplicationController
  # Ensure the user is authenticated for all actions except 'pending'
  before_action :authenticate_user!
  before_action :set_participation, only: [:approve, :decline, :reject]

  def approve
      if @participation.update(status: 'approved')
        redirect_to event_path(@participation.event), notice: 'Participation approved.'
      else
        redirect_to event_path(@participation.event), alert: 'Failed to approve participation.'
         # This will look for a file named `approve.js.erb`
      end
  end

  def decline
      if @participation.update(status: 'declined')
        redirect_to event_path(@participation.event), notice: 'Participation request declined.'
      else
         redirect_to event_path(@participation.event), alert: 'Failed to decline participation.'
      end
  end

  def create
    @event = Event.find(params[:event_id])
    @participation = @event.participations.create(user: current_user, status: 'pending')

    if @participation.save
      redirect_to pending_participations_path, notice: 'You have successfully requested to participate in the event.'
    else
      redirect_to @event, alert: 'Failed to request participation.'
    end
  end

  def pending
    @pending_participations = current_user.participations
  end

  def reject
    respond_to do |format|
      if @participation.update(status: 'rejected')
        format.html { redirect_to @participation.event, notice: 'Participation rejected.' }
        format.js   # This will look for a file named `reject.js.erb`
      else
        format.html { redirect_to @participation.event, alert: 'Failed to reject participation.' }
        format.js   # This will look for a file named `reject.js.erb`
      end
    end
  end

  private

  def set_participation
    @participation = Participation.find(params[:id])
  end
end
