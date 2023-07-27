class AddFavoriteColorToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :favorite_color, :string
  end
end
