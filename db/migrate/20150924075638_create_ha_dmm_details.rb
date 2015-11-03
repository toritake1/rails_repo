class CreateHaDmmDetails < ActiveRecord::Migration
  def change
    create_table :ha_dmm_details do |t|
      t.references :ha_idollist, null: false        #a_idollistへの外部キー
      t.string :title, null: false
      t.string :dvd_thumbnail, null: false
      t.string :dvd_url, null: false

      t.timestamps null: false
    end

    add_index :ha_dmm_details, :ha_idollist_id
  end
end
