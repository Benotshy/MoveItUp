class ParticipationsController < ApplicationController
  def pending
    @pending_participations = current_user.participations.where(status: 'pending')
  end
end
