# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Card.delete_all

require 'csv'

CSV.foreach(Rails.root.join('/home/parallels/odin/tlg/db/tlg-cards.csv'), headers: true) do |card|
    Card.create( {
        name: card["name"],
        bc_id: card["bc_id"],
        rarity: card["rarity"],
        syndicate: card["syndicate"],
        drop: card["drop"],
        alt_name: card["alt_name"],
        type_of_card: card["type_of_card"],
        subtype: card["subtype"],
        talents: card["talents"],
        ability: card["ability"],
        energy_cost: card["energy_cost"]
    } )
end