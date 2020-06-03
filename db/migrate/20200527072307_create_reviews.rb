class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.text :about
      t.text :imager
      t.integer :view
      t.boolean :hot
      t.references :user, null: false, foreign_key: true
      t.boolean :appended
      t.references :topic, null: false, foreign_key: true
      t.timestamps
    end
  end
end
