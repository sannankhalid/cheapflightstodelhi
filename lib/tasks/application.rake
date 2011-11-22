require 'rubygems'
require 'open-uri'

namespace :db do
  desc "Load the sample data from db/sample.rb"
  task :cities => :environment do
    sql = File.open("#{Rails.root}/db/migrate/Cities_new.sql").read
    sql.split(';').each do |sql_statement|
      ActiveRecord::Migration.execute(sql_statement)
    end
  end
end

