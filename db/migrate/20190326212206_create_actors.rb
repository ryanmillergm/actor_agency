class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :specialty
      t.integer :fee
      t.references :agency, foreign_key: true

      t.timestamps
    end
  end
end
