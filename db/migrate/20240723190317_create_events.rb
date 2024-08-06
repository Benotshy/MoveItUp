class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :address
      t.float :price
      t.integer :capacity
      t.string :title
      t.string :description
      t.string :city
      t.boolean :visibility, default: true
      t.references :user, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true
      t.timestamps
    end
  end
end
