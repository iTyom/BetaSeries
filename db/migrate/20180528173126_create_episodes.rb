class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.string :name
      t.references :season, foreign_key: true
      t.numeric :number
      t.string :description
      t.date :diffusion
      t.timestamps
    end
  end
end
