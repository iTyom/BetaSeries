class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.references :user, foreign_key: true
      t.references :episode, foreign_key: true
      t.numeric :note
      t.longtext :comment

      t.timestamps
    end
  end
end
