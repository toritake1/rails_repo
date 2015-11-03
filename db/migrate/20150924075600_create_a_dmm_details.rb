class CreateADmmDetails < ActiveRecord::Migration
  def change
    create_table :a_dmm_details do |t|
      t.references :a_idollist, null: false        #a_idollistへの外部キー
      t.string :title, null: false
      t.string :dvd_thumbnail, null: false
      t.string :dvd_url, null: false

      t.timestamps null: false
    end

    add_index :a_dmm_details, :a_idollist_id
  end
end
