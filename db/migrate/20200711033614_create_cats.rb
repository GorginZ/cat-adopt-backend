class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :sex
      t.integer :age
      t.text :bio
      t.text :state
      t.text :suburb

      t.timestamps
    end
  end
end
