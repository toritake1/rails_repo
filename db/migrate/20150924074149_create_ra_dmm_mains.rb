class CreateRaDmmMains < ActiveRecord::Migration
  def change
    create_table :ra_dmm_mains do |t|
      t.references :ra_idollist, null: false     #ra_idollistへの外部キー
      t.string :detail_url, null: false

      t.timestamps null: false
    end

     add_index :ra_dmm_mains, :ra_idollist_id, unique: true
  end
end
