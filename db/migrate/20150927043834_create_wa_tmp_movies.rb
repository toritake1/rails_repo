class CreateWaTmpMovies < ActiveRecord::Migration
  def change
    create_table :wa_tmp_movies do |t|
      t.references :wa_idollist, null: false        #a_idollistへの外部キー
      t.string :movie_thumbnail, null: false
      t.string :url, null: false
      t.string :description, null: false
      t.string :link, null: false

      t.timestamps null: false
    end

    add_index :wa_tmp_movies, :wa_idollist_id
    add_index :wa_tmp_movies, :movie_thumbnail, unique: true
    add_index :wa_tmp_movies, :url, unique: true
  end
end
