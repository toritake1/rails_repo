class CreateIdollists < ActiveRecord::Migration
  def change
    create_table :idollists do |t|

      t.timestamps null: false
    end

  end
end
