class CreateHashtagDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :hashtag_details do |t|
      t.references :hashtag, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
