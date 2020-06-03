class CreateHagtagDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :hagtag_details do |t|
      t.string :name
      t.references :hagtag, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
