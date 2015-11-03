class CreateADmmMains < ActiveRecord::Migration
  def change
    create_table :a_dmm_mains do |t|
      t.references :a_idollist, null: false     #a_idollistへの外部キー
      t.string :detail_url, null: false

      t.timestamps null: false
    end

     add_index :a_dmm_mains, :a_idollist_id, unique: true
  end
end
