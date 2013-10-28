class CreateAdvocates < ActiveRecord::Migration
  def change
    create_table :advocates do |t|
      t.integer :zip_code
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
