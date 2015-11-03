class CreateMaDmmMains < ActiveRecord::Migration
  def change
    create_table :ma_dmm_mains do |t|
      t.references :ma_idollist, null: false     #ma_idollistへの外部キー
      t.string :detail_url, null: false

      t.timestamps null: false
    end

     add_index :ma_dmm_mains, :ma_idollist_id, unique: true
  end
end
