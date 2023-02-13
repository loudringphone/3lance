class Offer < ApplicationRecord
    belongs_to :user, :optional => true
    belongs_to :request, :optional => true
    #validates :request_id, presence: true, uniqueness: { scope: :user_id }
    #validates :user_id, presence: true, uniqueness: { scope: :request_id }
end
