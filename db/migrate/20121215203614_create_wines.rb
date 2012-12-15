class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :wineName
      t.string :grapes
      t.string :like
      t.string :wineryName
      t.string :wineryLocation
      t.string :vintage
      t.string :foodPairings
      t.string :whereFound
      t.integer :cost
      t.string :inStock

      t.timestamps
    end
  end
end
