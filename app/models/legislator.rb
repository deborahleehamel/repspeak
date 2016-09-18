class Legislator < ApplicationRecord
  belongs_to :district

  def index
    @legislators = Legislator.all
  end
end
