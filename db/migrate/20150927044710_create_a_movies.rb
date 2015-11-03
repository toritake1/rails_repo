class CreateAMovies < ActiveRecord::Migration
  def change
    create_table :a_movies do |t|
      t.references :a_idollist, null: false        #a_idollistへの外部キー
      t.string :movie_thumbnail, null: false
      t.string :url, null: false
      t.string :description, null: false
      t.string :link, null: false

      t.timestamps null: false
    end

    add_index :a_movies, :a_idollist_id
    add_index :a_movies, :movie_thumbnail, unique: true
    add_index :a_movies, :url, unique: true
  end
end
