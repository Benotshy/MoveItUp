# app/controllers/participations_controller.rb
class ParticipationsController < ApplicationController

  # Other actions ...

  def accept
    @participation.update(status: 'accepted')
    redirect_to event_path(@participation.event)
  end

  def decline
    @participation.update(status: 'declined')
    redirect_to event_path(@participation.event)
  end

  def create
    event = Event.find(params[:event_id])
    participants_ids = Participation.pluck(:user_id)
    message ="You already are participating to this event!"
    if !participants_ids.include?(current_user.id)
      Participation.create!(user_id: current_user.id , event_id: event.id)
      message = "Participation has been confirmed"
    end
    redirect_to  pending_participations_path(event_id: event.id), notice: message


  end

  def pending
    @event = Event.find(params[:event_id])
    @pending_participations = @event.participations.where(status: 'pending')
  end

  private

  def set_participation
    @participation = Participation.find(params[:id])
  end
end
