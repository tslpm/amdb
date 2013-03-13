namespace :amdb do
  desc "Greeting"
  task :say_hello do
    puts "Wazzzzup"
  end

  desc "Generate a cool report"
  task :generate_report => :environment do
    puts "There are #{Movie.count} movies."
  end
end
