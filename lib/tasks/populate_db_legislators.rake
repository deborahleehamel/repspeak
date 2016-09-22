namespace :import_legislator_data do
  desc "Import legislators from service"
  task legislator_data: :environment do
    Legislator.all_data
  end
end
