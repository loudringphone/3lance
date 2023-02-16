class Offer < ApplicationRecord
    belongs_to :user, :optional => true
    belongs_to :request, :optional => true
    validates :user_id, presence: true
    validate :only_one_open_offer_per_user
    validate :request_must_be_open

    def open?
      status == 'Open'
    end

    def only_one_open_offer_per_user
      if self.open? && Offer.exists?(user_id: self.user_id, request_id: self.request_id, status: 'Open'){ |offer| offer.id != self.id }
        errors.add(:base, 'You cannot have more than one open offer for each request!')
      end
    end

  def request_must_be_open
    if request && !request.status == 'Open'
      errors.add(:request_id, 'Request must be open')
    end
  end
end
