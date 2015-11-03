class CreateKaDmmMains < ActiveRecord::Migration
  def change
    create_table :ka_dmm_mains do |t|
      t.references :ka_idollist, null: false     #ka_idollistへの外部キー
      t.string :detail_url, null: false

      t.timestamps null: false
    end

     add_index :ka_dmm_mains, :ka_idollist_id, unique: true
  end
end
