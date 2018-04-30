class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :gender
<<<<<<< HEAD
      
=======
>>>>>>> 04333373e84046df3c81b8c0c6af9e7534cf292d

      t.timestamps
    end
  end
end
