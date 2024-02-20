class CreatePersonDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :person_details do |t|
      t.integer :contact
      t.string :address
      t.string :contry
      t.integer :zipcode
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
