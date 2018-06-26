class LogCommentsController < ApplicationController
  def new
    @log = Log.find(params[:log_id])
    @log_comment = @log.log_comments.build
  end

  def create
    @log = Log.find(params[:log_id])
    @log_comment = @log.log_comments.create(log_comment_params)
    unless @log.close?
      if @log_comment.save
        redirect_to @log
      else
        flash.now[:danger] = "error"
      end
    end
  end
  private
    def log_comment_params
      params.require(:log_comment).permit(
        :comment,
        :log_id )
    end
end
