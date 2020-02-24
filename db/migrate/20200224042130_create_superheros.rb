class CreateSuperheros < ActiveRecord::Migration[5.2]
  def change
    create_table :superheros do |t|
      t.string :name
      t.string :description
      t.references :user, foreign_key: true
      t.integer :age
      t.string :superpower
      t.integer :brains
      t.integer :strength
      t.integer :speed
      t.integer :price
      t.string :location

      t.timestamps
    end
  end
end
