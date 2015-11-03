class CreateWaIdollists < ActiveRecord::Migration
  def change
    create_table :wa_idollists do |t|
      t.string :idol_name, null: false          # 名前
      t.string :wiki_name, null: false          # wikiの名前
      t.string :family_name_kana, null:false
      t.string :given_name_kana, null:false
      t.integer :year
      t.integer :month
      t.integer :day
      t.integer :height
      t.integer :bust
      t.integer :west
      t.integer :hip
      t.string :cup, null: false
      t.string :twitter, null: false

      t.timestamps null: false
    end

     add_index :wa_idollists, :bust
     add_index :wa_idollists, :cup
     add_index :wa_idollists, [ :family_name_kana, :given_name_kana ]
  end
end
