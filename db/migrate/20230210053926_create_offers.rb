class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.integer :user_id
      t.integer :request_id
      t.integer :offer_amount
      t.string :status, :default => 'Open' # add the default value so all newly created offers will have 'Open' status
      t.timestamps
    end
  end
end
