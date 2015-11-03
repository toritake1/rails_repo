class CreateYaDmmMains < ActiveRecord::Migration
  def change
    create_table :ya_dmm_mains do |t|
      t.references :ya_idollist, null: false     #ya_idollistへの外部キー
      t.string :detail_url, null: false

      t.timestamps null: false
    end

     add_index :ya_dmm_mains, :ya_idollist_id, unique: true
  end
end
