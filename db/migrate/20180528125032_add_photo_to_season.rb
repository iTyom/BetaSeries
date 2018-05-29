class AddPhotoToSeason < ActiveRecord::Migration[5.1]
  def change
    add_column :seasons, :photo, :string
  end
end
