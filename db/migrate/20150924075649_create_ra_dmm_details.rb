class CreateRaDmmDetails < ActiveRecord::Migration
  def change
    create_table :ra_dmm_details do |t|
      t.references :ra_idollist, null: false        #a_idollistへの外部キー
      t.string :title, null: false
      t.string :dvd_thumbnail, null: false
      t.string :dvd_url, null: false

      t.timestamps null: false
    end

    add_index :ra_dmm_details, :ra_idollist_id
  end
end
