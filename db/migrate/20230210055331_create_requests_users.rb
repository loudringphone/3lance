class CreateRequestsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :requests_users do |t|
      t.integer :request_id
      t.integer :user_id
    end
  end
end
