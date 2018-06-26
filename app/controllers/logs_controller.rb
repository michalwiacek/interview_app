class LogsController < ApplicationController
  before_action :set_log, only: [:show, :update,]

  def index
    @logs = Log.all
  end

  def show
  end

  def new
    @log = Log.new
  end

  def update
    @log.close!
    redirect_to root_path
  end

  def create
    # TODO:
  end

  private
    def set_log
      @log ||= Log.find(params[:id])
    end
end
