class CreateRecommendations < ActiveRecord::Migration[7.0]
  def up
    create_table :recommendations do |t|
      t.references :consultation_request, null: false, foreign_key: true
      t.text :text

      t.timestamps
    end
  end

  def down
    drop_table :recommendations
  end
end
