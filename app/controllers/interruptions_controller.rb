class InterruptionsController < ApplicationController

  def index
    @total = Interruption.count
    @total_cost = @total * 40 * 0.66
    @interruptions = Interruption.where.not(status: :internal)
    @interruption = Interruption.new
  end

  def create
    @interruption = Interruption.new interruption_params
    
    if @interruption.save
      redirect_to interruptions_path, notice: "Successfully Logged!"
    else
      render :index, alert: "Something went wrong. Couldn't save :("
    end
  end

  private
    def interruption_params
      params.require(:interruption).permit(:name, :reason, :status, :happened_at)
    end
end