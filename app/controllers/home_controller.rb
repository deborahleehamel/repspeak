class HomeController < ApplicationController

  def index
    @legislators = Legislator.all
  end
end
