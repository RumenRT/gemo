require 'countries'
 
puts "What country do you want a report on?"
 
country_name = gets.strip
 
country = ISO3166::Country.find_country_by_name(country_name)
 
if country
  puts "The flag for #{country.name} is #{country.emoji_flag}"
else
  puts "Could not find a country called #{country_name}"
end
