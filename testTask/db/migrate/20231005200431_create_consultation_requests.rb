class CreateConsultationRequests < ActiveRecord::Migration[7.0]
  def up
    create_table :consultation_requests do |t|
      t.references :patient, null: false, foreign_key: true
      t.text :text
      t.timestamps
    end
  end

  def down
    drop_table :consultation_requests
  end
end
