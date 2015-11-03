class CreateSaDmmMains < ActiveRecord::Migration
  def change
    create_table :sa_dmm_mains do |t|
      t.references :sa_idollist, null: false     #sa_idollistへの外部キー
      t.string :detail_url, null: false

      t.timestamps null: false
    end

     add_index :sa_dmm_mains, :sa_idollist_id, unique: true
  end
end
