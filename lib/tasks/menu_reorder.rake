namespace :db do
  desc "Reorder Menu. Must have user already signed in"
  task reorder: :environment do
    #Menu reorder
    plugins = Refinery::User.first.plugins
    plugins.find_by_name('refinery_settings').position = 0
    plugins.find_by_name('refinery_users').position = 1
    plugins.find_by_name('refinery_dashboard').position = 2
    plugins.find_by_name('refinery_images').position = 3
    plugins.find_by_name('refinery_files').position = 4
    plugins.find_by_name('refinery_files').position = 5
    plugins.find_by_name('refinerycms_news').position = 6
    plugins.find_by_name('articles').position = 7
    plugins.find_by_name('books').position = 8
    plugins.find_by_name('routes').position = 9
    plugins.find_by_name('customizations').position = 10
  end
end