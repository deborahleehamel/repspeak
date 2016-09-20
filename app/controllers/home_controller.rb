class HomeController < ApplicationController

  def index
    @districts = District.all
    # GovTrackService.get_reps
    # @legislators = Legislators.all
  end
end
