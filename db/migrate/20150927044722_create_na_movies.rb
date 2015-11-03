class CreateNaMovies < ActiveRecord::Migration
  def change
    create_table :na_movies do |t|
      t.references :na_idollist, null: false        #a_idollistへの外部キー
      t.string :movie_thumbnail, null: false
      t.string :url, null: false
      t.string :description, null: false
      t.string :link, null: false

      t.timestamps null: false
    end

    add_index :na_movies, :na_idollist_id
    add_index :na_movies, :movie_thumbnail, unique: true
    add_index :na_movies, :url, unique: true
  end
end
