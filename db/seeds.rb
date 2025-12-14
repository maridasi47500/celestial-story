# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
  ["video","photo","text","code"].each do |genre_name|
    Mytype.find_or_create_by!(name: genre_name)
  end
ISO3166::Country.all_translated.each do |country|
    mycountry=Country.find_or_create_by(name: country)
end

