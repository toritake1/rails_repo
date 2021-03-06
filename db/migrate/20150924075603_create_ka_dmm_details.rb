class CreateKaDmmDetails < ActiveRecord::Migration
  def change
    create_table :ka_dmm_details do |t|
      t.references :ka_idollist, null: false        #a_idollistへの外部キー
      t.string :title, null: false
      t.string :dvd_thumbnail, null: false
      t.string :dvd_url, null: false

      t.timestamps null: false
    end

    add_index :ka_dmm_details, :ka_idollist_id
  end
end
