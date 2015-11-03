class CreateNaDmmMains < ActiveRecord::Migration
  def change
    create_table :na_dmm_mains do |t|
      t.references :na_idollist, null: false     #na_idollistへの外部キー
      t.string :detail_url, null: false

      t.timestamps null: false
    end

     add_index :na_dmm_mains, :na_idollist_id, unique: true
  end
end
