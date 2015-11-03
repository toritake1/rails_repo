class CreateMaDmmDetails < ActiveRecord::Migration
  def change
    create_table :ma_dmm_details do |t|
      t.references :ma_idollist, null: false        #a_idollistへの外部キー
      t.string :title, null: false
      t.string :dvd_thumbnail, null: false
      t.string :dvd_url, null: false

      t.timestamps null: false
    end

    add_index :ma_dmm_details, :ma_idollist_id
  end
end
