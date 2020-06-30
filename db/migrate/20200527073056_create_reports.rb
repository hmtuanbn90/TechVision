class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.text :reason
      t.references :user,   null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
