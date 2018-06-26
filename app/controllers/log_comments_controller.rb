class LogCommentsController < ApplicationController
  def new
    @log = Log.find(params[:log_id])
    @log_comment = @log.log_comments.build
  end

  def create
    @log_comment = LogComment.new(log_comment_params)
    @log_comment.save
  end
  private
    def log_comment_params
      params.require(:log_comment).permit(
        :comment,
        :log_id )
    end
end
