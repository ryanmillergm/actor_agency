class CreateAgencies < ActiveRecord::Migration[5.1]
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :city
      t.integer :base_fee

      t.timestamps
    end
  end
end
