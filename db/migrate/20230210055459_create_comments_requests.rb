class CreateCommentsRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :comments_requests do |t|
      t.integer :comment_id
      t.integer :request_id
    end
  end
end
