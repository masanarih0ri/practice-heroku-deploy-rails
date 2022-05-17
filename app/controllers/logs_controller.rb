class LogsController < ApplicationController
  def index
    @logs = Log.all
  end

  def new

  end

  def create
    @log = Log.new(log_params)
    @log.save
    redirect_to logs_path
  end

  private

  def log_params
    params.permit(:content)
  end
end
