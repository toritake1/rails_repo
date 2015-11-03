class CreateYaDmmDetails < ActiveRecord::Migration
  def change
    create_table :ya_dmm_details do |t|
      t.references :ya_idollist, null: false        #a_idollistへの外部キー
      t.string :title, null: false
      t.string :dvd_thumbnail, null: false
      t.string :dvd_url, null: false

      t.timestamps null: false
    end

    add_index :ya_dmm_details, :ya_idollist_id
  end
end
