require_relative '../../config/application'

# this is where you should use an ActiveRecord migration to 

class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :list_of_todos
      t.string :complete, default: 'No'
      t.timestamps null: false
      # t.string :last_name, length: 64
      # t.string :gender
      # t.date :birthday
      # t.string :email, uniqueness: true
      # t.string :phone
    end
    # HINT: checkout ActiveRecord::Migration.create_table
  end
end
