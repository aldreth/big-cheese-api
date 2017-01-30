class CreateGrantApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :grant_applications do |t|
      t.string :name
      t.string :postcode
      t.integer :amount
      t.string :description

      t.timestamps
    end
  end
end
