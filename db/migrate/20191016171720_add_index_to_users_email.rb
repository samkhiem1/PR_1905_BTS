class AddIndexToUsersEmail < ActiveRecord::Migration[5.2]
  def change
<<<<<<< HEAD
  	    add_index :users, :email, unique: true
=======
    add_index :users, :email, unique: true
>>>>>>> fb8a306982d09cf1ea01c05b889161b6f49b95e5
  end
end
