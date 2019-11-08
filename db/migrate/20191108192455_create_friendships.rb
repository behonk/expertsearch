class CreateFriendships < ActiveRecord::Migration[5.1]
  def change
    create_table :friendships do |t|
      t.references :member1, foreign_key: { to_table: :members }
      t.references :member2, foreign_key: { to_table: :members }

      t.timestamps
    end
  end
end
