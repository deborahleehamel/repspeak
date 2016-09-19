class LegislatorsController < ApplicationController

  def index
    @legislators = GovTrackService.new.get_reps
    # @legislators = Legislator.all
  end
end
