class LogsController < ApplicationController
  before_action :set_log, only: %I[show update]

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
    def log_params
      params.require(:log).permit(
        :name,
        :description,
        :status
        {log_comment_attributes: [:log_id, :comment] })
    end
end
