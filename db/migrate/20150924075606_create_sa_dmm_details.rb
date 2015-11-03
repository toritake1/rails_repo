class CreateSaDmmDetails < ActiveRecord::Migration
  def change
    create_table :sa_dmm_details do |t|
      t.references :sa_idollist, null: false        #a_idollistへの外部キー
      t.string :title, null: false
      t.string :dvd_thumbnail, null: false
      t.string :dvd_url, null: false

      t.timestamps null: false
    end

    add_index :sa_dmm_details, :sa_idollist_id
  end
end
