namespace :dev do
  desc "Configura ambiente de DEV"
  task setup: :environment do

   puts %x(rails db:drop db:create db:migrate db:seed)

  end

end