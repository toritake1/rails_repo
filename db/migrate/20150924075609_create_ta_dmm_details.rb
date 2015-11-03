class CreateTaDmmDetails < ActiveRecord::Migration
  def change
    create_table :ta_dmm_details do |t|
      t.references :ta_idollist, null: false        #a_idollistへの外部キー
      t.string :title, null: false
      t.string :dvd_thumbnail, null: false
      t.string :dvd_url, null: false

      t.timestamps null: false
    end

    add_index :ta_dmm_details, :ta_idollist_id
  end
end
