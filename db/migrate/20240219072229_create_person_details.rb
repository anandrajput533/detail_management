class CreatePersonDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :person_details do |t|
      t.string :phone
      t.string :title
      t.integer :age
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
