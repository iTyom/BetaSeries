class AddPhotoToSeries < ActiveRecord::Migration[5.1]
  def change
    add_column :series, :photo, :string
  end
end
