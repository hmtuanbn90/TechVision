class CreateHastags < ActiveRecord::Migration[6.0]
  def change
    create_table :hastags do |t|
      t.string :name
      t.timestamps
    end
  end
end
