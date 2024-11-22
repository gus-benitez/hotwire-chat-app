class CreateChats < ActiveRecord::Migration[8.0]
  def change
    create_table :chats do |t|
      t.string :name
      t.boolean :is_group_chat

      t.timestamps
    end
  end
end
