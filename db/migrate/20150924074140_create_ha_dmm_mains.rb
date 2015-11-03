class CreateHaDmmMains < ActiveRecord::Migration
  def change
    create_table :ha_dmm_mains do |t|
      t.references :ha_idollist, null: false     #ha_idollistへの外部キー
      t.string :detail_url, null: false

      t.timestamps null: false
    end

     add_index :ha_dmm_mains, :ha_idollist_id, unique: true
  end
end
