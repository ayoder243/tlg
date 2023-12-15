class CreateCards < ActiveRecord::Migration[7.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :drop
      t.string :alt_name
      t.string :type_of_card
      t.string :ability
      t.string :rarity
      t.string :syndicate
      t.string :talents
      t.string :subtype
      t.integer :energy_cost
      t.string :bc_id

      t.timestamps
    end
  end
end
