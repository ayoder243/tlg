class Card < ApplicationRecord
    scope :filter_by_syndicate, -> (syndicate) { where syndicate: syndicate }
    scope :filter_by_rarity, -> (rarity) { where rarity: rarity }
    scope :filter_by_drop, -> (drop) { where drop: drop }
    scope :filter_by_type, -> (type_of_card) { where type_of_card: type_of_card }
    scope :filter_by_subtype, -> (subtype) { where subtype: subtype }
    scope :filter_by_talents, -> (talent) { where("cards.talents = ?", "#{talent}" ) }
    scope :filter_by_energy_cost, -> (energy_cost) { where energy_cost: energy_cost }
end
