class CreateRelationships < ActiveRecord::Migration[5.1]
<<<<<<< HEAD
  def change
    create_table :relationships do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps
    end
  end
=======
	def change
		create_table :relationships do |t|
			t.integer :follower_id
			t.integer :followed_id

			t.timestamps


			add_index :relationships, :follower_id
			add_index :relationships, :followed_id
			add_index :relationships, [:follower_id, :followed_id], unique: true
		end
	end
>>>>>>> 04333373e84046df3c81b8c0c6af9e7534cf292d
end
