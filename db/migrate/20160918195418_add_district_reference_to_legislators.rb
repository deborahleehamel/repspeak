class AddDistrictReferenceToLegislators < ActiveRecord::Migration[5.0]
  def change
    add_reference :legislators, :district, foreign_key: true
  end
end
