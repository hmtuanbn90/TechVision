class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.interger :follower_id
      t.interger :followed_id

      t.timestamps
    end
  end
end
