class CreateWaDmmDetails < ActiveRecord::Migration
  def change
    create_table :wa_dmm_details do |t|
      t.references :wa_idollist, null: false        #a_idollistへの外部キー
      t.string :title, null: false
      t.string :dvd_thumbnail, null: false
      t.string :dvd_url, null: false

      t.timestamps null: false
    end

    add_index :wa_dmm_details, :wa_idollist_id
  end
end
