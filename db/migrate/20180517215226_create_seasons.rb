class CreateSeasons < ActiveRecord::Migration[5.1]
  def change
    create_table :seasons do |t|
      t.numeric :number
      t.references :serie, foreign_key: true

      t.timestamps
    end
  end
end
