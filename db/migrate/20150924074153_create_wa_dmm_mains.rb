class CreateWaDmmMains < ActiveRecord::Migration
  def change
    create_table :wa_dmm_mains do |t|
      t.references :wa_idollist, null: false     #wa_idollistへの外部キー
      t.string :detail_url, null: false

      t.timestamps null: false
    end

     add_index :wa_dmm_mains, :wa_idollist_id, unique: true
  end
end
