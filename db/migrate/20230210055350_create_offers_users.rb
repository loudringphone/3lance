class CreateOffersUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers_users do |t|
      t.integer :offer_id
      t.integer :user_id
    end
  end
end
