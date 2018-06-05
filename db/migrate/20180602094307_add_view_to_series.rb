class AddViewToSeries < ActiveRecord::Migration[5.1]
  def change
    add_column :series, :view, :boolean
  end
end
