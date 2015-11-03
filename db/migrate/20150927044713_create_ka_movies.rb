class CreateKaMovies < ActiveRecord::Migration
  def change
    create_table :ka_movies do |t|
      t.references :ka_idollist, null: false        #a_idollistへの外部キー
      t.string :movie_thumbnail, null: false
      t.string :url, null: false
      t.string :description, null: false
      t.string :link, null: false

      t.timestamps null: false
    end

    add_index :ka_movies, :ka_idollist_id
    add_index :ka_movies, :movie_thumbnail, unique: true
    add_index :ka_movies, :url, unique: true
  end
end
