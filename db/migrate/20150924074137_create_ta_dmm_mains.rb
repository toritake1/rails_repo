class CreateTaDmmMains < ActiveRecord::Migration
  def change
    create_table :ta_dmm_mains do |t|
      t.references :ta_idollist, null: false     #ta_idollistへの外部キー
      t.string :detail_url, null: false

      t.timestamps null: false
    end

     add_index :ta_dmm_mains, :ta_idollist_id, unique: true

  end
end
