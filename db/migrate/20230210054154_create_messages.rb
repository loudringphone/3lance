class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.text :content
      t.datetime :sent_time, :default => Time.now
      t.boolean :is_read, :default => false

      t.timestamps
    end
  end
end
