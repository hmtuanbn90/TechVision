class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :tittle
      t.text :content
      t.text :about

      t.timestamps
    end
  end
end
