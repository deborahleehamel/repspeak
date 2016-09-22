# require 'rails_helper'
#
# RSpec.describe "User can see legislator info" do
#   before do
#     `rake import_district_data:district_data`
#     `rake import_legislator_data:legislator_data`
#   end
#
#   it "displays legislator info" do
#     visit "/"
#     expect(page).to have_content("Colorado Representatives")
#
#     expect(page).to have_selector('.all_reps', count: 1)
#     # expect(page).to have_selector('.rep', count: 9)
#
#       # expect(page).to have_content("Senator")
#
#       expect(page).to have_content("Sen. Michael Bennet [D-CO]")
#       expect(page).to have_content("SenBennetCo")
#
#       expect(page).to have_content("4")
#       # expect(page).to have_content("Representative")
#       expect(page).to have_content("Rep. Ken Buck [R-CO4]")
#       expect(page).to have_content("RepDianaDeGette")
#   end
# end
