# typed: false
# frozen_string_literal: true

class RoutinesController < ApplicationController
  prepend_before_action -> { warden.authenticate!(:api_key) }
  before_action :validate_routine_creation_params, only: :create
  before_action :validate_routine_params, only: %i[show update destroy]

  def create
    Routine.create!(
      user_id: current_user.id,
      name: params[:name],
      action: params[:action],
      starts_at: params[:starts_at],
      periodicity: params[:periodicity],
      monitoring_criteria: params[:monitoring_criteria],
      monitored_event: params[:monitored_event]
    )
  rescue StandardError => e
    Raven.capture_exception(e)
  end

  def index
    Routine.joins(:user).where('users.company_name = ?', current_user.company_name)
  end

  def show
    Routine.find_by(id: params[:id])
  end

  def update
    Routine.find_by(id: params[:id])
      .update!(
        name: params[:name],
        status: params[:status],
        action: params[:action],
        starts_at: params[:starts_at],
        periodicity: params[:periodicity],
        monitoring_criteria: params[:monitoring_criteria],
        monitored_event: params[:monitored_event]
    )
  end

  def destroy
    Routine.destroy!(params[:id])
  end

  private

  def validate_routine_creation_params
    params.require(%i[name action periodicity monitoring_criteria monitored_event])
    params.permit(:starts_at)
  end

  def validate_routine_params
    params.require(:id)
    params.permit(:name, :action, :starts_at, :periodicity, :monitored_event)
  end
end
