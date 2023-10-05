class CreatePatients < ActiveRecord::Migration[7.0]
  def up
    create_table :patients do |t|
      t.string :full_name, null: false
      t.string :email, null: false
      t.string :phone_number, null: false
      t.datetime :birth_date, null: false
      t.timestamps
    end
  end

  def down
    drop_table :patients
  end
end
