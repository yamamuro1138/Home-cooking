class CreateCookings < ActiveRecord::Migration[6.0]
  def change
    create_table :cookings do |t|

      t.timestamps
      t.string :name,           null: false
      t.string :recipe,         null: false
      t.string :point,          null: false
      t.string :material,       null: false
      t.references :user,       foreign_key: true
    end
  end
end
