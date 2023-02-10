class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :request_id
      t.text :content
      t.datetime :sent_time
      t.timestamps
    end
  end
end
