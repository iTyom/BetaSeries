class CreateUsersEpisodesSeries < ActiveRecord::Migration[5.1]
  def change
    create_table :users_episodes_series do |t|
      t.references :user, foreign_key: true
      t.references :serie, foreign_key: true
      t.references :episode, foreign_key: true

      t.timestamps
    end
  end
end
