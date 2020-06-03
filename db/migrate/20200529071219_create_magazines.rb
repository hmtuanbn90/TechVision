class CreateMagazines < ActiveRecord::Migration[6.0]
  def change
    create_table :magazines do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
