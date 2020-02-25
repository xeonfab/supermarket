class AddImageToSuperheroes < ActiveRecord::Migration[5.2]
  def change
    add_column :superheroes, :image, :string
  end
end
