class LogsController < ApplicationController

  def index
    @logs = Log.all
  end

  def show
    @log = Log.find(params[:id])
  end

  def new
    @log = Log.new
  end

  def create
    # TODO:
  end

end
