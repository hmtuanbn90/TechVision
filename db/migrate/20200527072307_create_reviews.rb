class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :tittle
      t.text :content
      t.text :about
      t.text :imager
      t.integer :view
      t.boolean :hot
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
