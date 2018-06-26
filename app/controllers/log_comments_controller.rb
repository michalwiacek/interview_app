class LogCommentsController < ApplicationController
  before_action :correct_log_status

  def new
    @log = Log.find(params[:log_id])
    @log_comment = @log.log_comments.build
  end

  def create
    @log = Log.find(params[:log_id])
    @log_comment = @log.log_comments.build(log_comment_params)
      if @log_comment.save
        redirect_to log_path(@log.id)
      else
        flash.now[:danger] = "error"
      end
  end

  private

    def log_comment_params
      params.require(:log_comment).permit(
        :comment,
        :log_id )
    end

    def correct_log_status
      @log = Log.find(params[:log_id])
      redirect_to root_url if @log.closed?
    end
end
