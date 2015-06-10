namespace :export do
  desc "Prints Continent.all in a seeds.rb way."
  task :seeds_format => :environment do
    Continent.order(:id).all.each do |continent|
      puts "Continent.create(#{continent.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end