require 'csv'

namespace :import_district_data do
  desc "Import districts from csv"
  task district_data: :environment do
    filename = File.join Rails.root, "lib/assets/district_data.csv"

    CSV.foreach(filename, headers: true) do |row|
      District.create!(row.to_hash)
    end
  end
end
