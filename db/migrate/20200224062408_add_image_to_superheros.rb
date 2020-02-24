class AddImageToSuperheros < ActiveRecord::Migration[5.2]
  def change
    add_column :superheros, :image, :string
  end
end
