class DistrictsController < ApplicationController
  require 'csv'

  def index
    @districts = District.all
  end

end
