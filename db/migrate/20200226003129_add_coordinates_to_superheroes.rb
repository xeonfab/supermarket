class AddCoordinatesToSuperheroes < ActiveRecord::Migration[5.2]
  def change
    add_column :superheroes, :latitude, :float
    add_column :superheroes, :longitude, :float
  end
end
