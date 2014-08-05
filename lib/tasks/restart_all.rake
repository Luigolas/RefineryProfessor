namespace :db do
  desc "DB drop, setup and populate"
  task restart: :environment do
    Rake::Task['db:drop'].invoke
    Rake::Task['db:setup'].invoke
    Rake::Task['db:populate'].invoke
  end
end