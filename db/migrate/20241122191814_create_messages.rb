class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :chat, null: false, foreign_key: true
      t.string :sender_name

      t.timestamps
    end
  end
end
