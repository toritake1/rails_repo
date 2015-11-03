class CreateNaDmmDetails < ActiveRecord::Migration
  def change
    create_table :na_dmm_details do |t|
      t.references :na_idollist, null: false        #a_idollistへの外部キー
      t.string :title, null: false
      t.string :dvd_thumbnail, null: false
      t.string :dvd_url, null: false

      t.timestamps null: false
    end

    add_index :na_dmm_details, :na_idollist_id
  end
end
