class CreateHaMovies < ActiveRecord::Migration
  def change
    create_table :ha_movies do |t|
      t.references :ha_idollist, null: false        #a_idollistへの外部キー
      t.string :movie_thumbnail, null: false
      t.string :url, null: false
      t.string :description, null: false
      t.string :link, null: false

      t.timestamps null: false
    end

    add_index :ha_movies, :ha_idollist_id
    add_index :ha_movies, :movie_thumbnail, unique: true
    add_index :ha_movies, :url, unique: true
  end
end
