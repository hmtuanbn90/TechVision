class CreateHastags < ActiveRecord::Migration[6.0]
  def change
    create_table :hastags do |t|
      t.string :name
      t.references :review, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
