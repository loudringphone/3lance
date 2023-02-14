class AddRequestIdToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :request_id, :integer
  end
end
