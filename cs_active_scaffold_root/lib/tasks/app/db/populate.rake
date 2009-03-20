namespace :app do
namespace :db do

  desc "Erase and populate database. (You should implement!)"

  task :populate => :environment do

  require 'populator'
  require 'faker'

  #Erase and populate your database here

  end

end
end