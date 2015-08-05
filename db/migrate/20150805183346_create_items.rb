class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :code
      t.string :title
      t.text :description
      t.integer :quantity
      t.integer :safetystock
      t.integer :reorderlevel
      t.integer :leadtime

      t.timestamps null: false
    end
  end
end
