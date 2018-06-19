class Api::SchedulesController < ApplicationController
  # before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  # GET /schedules/1
  # GET /schedules/1.json
  def show
    # @schedules = Schedule.where(theater_id: params[:theater_id]).where(work_id: params[:work_id])
    @schedules = Schedule.where(theater_id: params[:theater_id])
    # @schedules = Schedule.where(theater_id: params[:theater_id]).where(work_id: params[:work_id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

  def index
    @schedules = Schedule.where(work_id: params[:work_id])
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

  def get
    @schedules = Schedule.where(schedule_day:  (Time.zone.today + params[:id].to_i))
    render 'show', formats: 'json', handlers: 'jbuilder'
  end

end
