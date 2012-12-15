class CreateWineLists < ActiveRecord::Migration
  def change
    create_table :wine_lists do |t|
      t.string :wineName
      t.string :grapes
      t.string :like
      t.string :wineryName
      t.string :wineryLocation
      t.string :vintage
      t.string :foodPairings
      t.string :whereFound
      t.int :cost
      t.string :inStock

      t.timestamps
    end
  end
end
